from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def test_third_party_license_inventory_matches_dependency_free_runtime():
    license_inventory = (ROOT / "THIRD_PARTY_LICENSES.txt").read_text(encoding="utf-8")
    requirements = (ROOT / "requirements.txt").read_text(encoding="utf-8")

    declared_requirements = [
        line.strip()
        for line in requirements.splitlines()
        if line.strip() and not line.strip().startswith("#")
    ]

    assert declared_requirements == []
    assert "No bundled third-party runtime code" in license_inventory
    assert "declares no Python runtime dependencies" in license_inventory
    assert "not a frozen transitive SBOM" in license_inventory


def test_public_docs_reference_third_party_license_inventory():
    readme = (ROOT / "README.md").read_text(encoding="utf-8")
    changelog = (ROOT / "CHANGELOG.md").read_text(encoding="utf-8")

    assert "THIRD_PARTY_LICENSES.txt" in readme
    assert "THIRD_PARTY_LICENSES.txt" in changelog
