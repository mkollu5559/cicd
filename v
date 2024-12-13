Terraform Module Versioning Strategy Document

Objective

This document defines the versioning strategy for Terraform modules to ensure stability and smooth upgrades. The strategy covers version increments within the 1.x.x range and outlines the process for introducing breaking changes with 2.x.x.

Versioning Strategy for Terraform Modules

Terraform modules follow Semantic Versioning (SemVer):
	•	MAJOR (X): Incremented for breaking changes that are not backward compatible.
	•	MINOR (Y): Incremented for new features that are backward compatible.
	•	PATCH (Z): Incremented for bug fixes or documentation updates that do not affect functionality.

Version Ranges

1. Module Versions: 1.0.0 to 1.99.99
	•	Changes within 1.x.x must not introduce breaking changes.
	•	Examples of changes allowed:
	•	Adding new resources, variables, or outputs.
	•	Enhancing existing functionality without altering current behavior.
	•	Bug fixes and performance improvements.

2. Module Versions: 2.x.x and Beyond
	•	Used for breaking changes that require users to update their configurations.
	•	Breaking changes include:
	•	Renaming or removing variables, outputs, or resources.
	•	Changes in default values or resource behaviors.
	•	Requiring additional mandatory inputs.

Versioning Workflow
	1.	Patch Version Updates (1.x.Z)
	•	Increment for:
	•	Fixing bugs.
	•	Updating documentation.
	•	Refactoring code without altering functionality.
Example:
	•	1.0.0 → 1.0.1 for a bug fix.
	2.	Minor Version Updates (1.Y.0)
	•	Increment for:
	•	Adding new features, variables, or outputs.
	•	Enhancements that are backward compatible.
Example:
	•	1.0.0 → 1.1.0 for a new resource or variable.
	3.	Major Version Updates (X.0.0)
	•	Increment for:
	•	Breaking changes requiring users to modify configurations.
	•	Removal or renaming of existing variables, outputs, or resources.
Example:
	•	1.99.99 → 2.0.0 for a breaking change in module usage.

Best Practices for Managing Versioning
	1.	Maintain Backward Compatibility
	•	Use deprecation warnings for variables or outputs before removing them.
	•	Document changes in CHANGELOG.md for every release.
	2.	Communicate Breaking Changes
	•	Clearly describe breaking changes in the release notes.
	•	Provide migration instructions to help users upgrade smoothly.
	3.	Tagging and Releasing
	•	Use Git tags to version modules (e.g., v1.0.0, v1.1.0, v2.0.0).
	•	Release a new version after every change that impacts the module’s functionality or usage.
	4.	Automated Testing
	•	Ensure modules are tested across supported Terraform versions and configurations before release.

Examples of Version Changes
	1.	Patch Update (1.0.0 → 1.0.1)
	•	Fixed a typo in a variable description.
	2.	Minor Update (1.0.0 → 1.1.0)
	•	Added a new optional variable for additional configuration.
	3.	Major Update (1.99.99 → 2.0.0)
	•	Renamed a key variable, requiring users to update their configuration.

Migration Plan for Breaking Changes
	1.	Communicate Early
	•	Announce upcoming breaking changes in documentation and repository readme.
	•	Provide detailed migration steps for users.
	2.	Provide Transition Period
	•	Retain deprecated features alongside new ones for at least one 1.x release.
	•	Mark deprecated features in the documentation with a clear timeline for removal.
	3.	Version Release
	•	Introduce breaking changes in the 2.x.x release, removing deprecated features.

Conclusion

This versioning strategy ensures Terraform modules remain stable and predictable for users while allowing room for growth and innovation. By adhering to Semantic Versioning, users can confidently adopt new features or updates without unexpected disruptions.



# Changelog

## [Version] - YYYY-MM-DD
### Added
- [New Feature or Functionality] Brief description of the new feature.

### Changed
- [Modified Feature or Functionality] Brief description of the change.
- [Breaking Change] Clear explanation of what changed and how to migrate.

### Deprecated
- [Deprecated Feature or Functionality] Indicate features marked for removal in future versions.

### Removed
- [Removed Feature or Functionality] Indicate features that were removed in this version.

### Fixed
- [Bug Fix] Brief description of the fixed issue.

### Security
- [Security Fix] Description of any resolved security vulnerabilities.


# Changelog

## [2.0.0] - 2024-12-10
### Changed
- **Breaking Change:** Renamed variable `instance_type` to `vm_type`. Update your configuration accordingly.
- Changed the default value of `enable_logging` to `true`.

### Removed
- Removed deprecated variable `old_network_id`.

## [1.5.0] - 2024-11-01
### Added
- Added support for new optional variable `enable_monitoring`.
- New output `monitoring_endpoint` for integration.

### Deprecated
- Deprecated variable `legacy_subnet_id` in favor of `subnet_id`.

## [1.4.1] - 2024-10-15
### Fixed
- Resolved an issue with incorrect IAM role attachments for Lambda policies.

## [1.4.0] - 2024-10-01
### Added
- Added support for tagging resources with the `tags` variable.

---

## Best Practices for Maintaining `CHANGELOG.md`

1. **Update for Every Release**
   - Document every update, even minor changes or fixes.
   - Follow the semantic versioning pattern for each release.

2. **Highlight Breaking Changes**
   - Clearly mark and explain breaking changes under the **Changed** or **Removed** sections.
   - Include migration instructions for users.

3. **Use Markdown Formatting**
   - Use headers (`##`, `###`) to structure entries for readability.

4. **Automate Where Possible**
   - Use tools like [`git-chglog`](https://github.com/git-chglog/git-chglog) to generate changelogs from commit messages.

5. **Provide Context**
   - Include links to related pull requests, issues, or documentation for more details.

---

## Conclusion

A well-maintained `CHANGELOG.md` file ensures users can easily understand updates and adopt new module versions with confidence. By adhering to these guidelines, you can streamline version tracking and enhance user trust.

