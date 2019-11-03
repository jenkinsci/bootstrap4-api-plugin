# Bootstrap 4 Jenkins Plugin

[![Jenkins Version](https://img.shields.io/badge/Jenkins-2.138.4-green.svg?label=min.%20Jenkins)](https://jenkins.io/download/)
![JDK8](https://img.shields.io/badge/jdk-8-yellow.svg?label=min.%20JDK)
[![License: MIT](https://img.shields.io/badge/license-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub Actions](https://github.com/uhafner/bootstrap4-api-plugin/workflows/GitHub%20Actions/badge.svg)](https://github.com/uhafner/bootstrap4-api-plugin/actions)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/uhafner/bootstrap4-api-plugin.svg)](https://github.com/uhafner/bootstrap4-api-plugin/pulls)

Provides [Bootstrap 4](https://getbootstrap.com/) for Jenkins Plugins.

This plugin contains a modified bootstrap release with additional breakpoints. 

You can see the available breakpoints by including the following HTML snippet in your view: 

```
        <div class="col-12">
            <span class="badge badge-dark d-xxxl-inline d-none">xxxl</span>
            <span class="badge badge-dark d-xxl-inline d-xxxl-none d-none">xxl</span>
            <span class="badge badge-dark d-xl-inline d-xxl-none d-none">xl</span>
            <span class="badge badge-dark d-lg-inline d-xl-none d-none">lg</span>
            <span class="badge badge-dark d-md-inline d-lg-none d-none">md</span>
            <span class="badge badge-dark d-sm-inline d-md-none d-none">sm</span>
            <span class="badge badge-dark d-inline d-sm-none">xs</span>
        </div>
```
