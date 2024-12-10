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
