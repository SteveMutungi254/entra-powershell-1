---
title: About Microsoft Entra PowerShell.
description: About Microsoft Entra PowerShell.


ms.topic: reference
ms.date: 06/26/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru
---

[![PSGallery Version](https://img.shields.io/powershellgallery/v/Microsoft.Graph.Entra.svg?style=flat&logo=powershell&label=PSGallery%20Version)](https://www.powershellgallery.com/packages/Microsoft.Graph.Entra) 
[![PSGallery Downloads](https://img.shields.io/powershellgallery/dt/Microsoft.Graph.Entra.svg?style=flat&logo=powershell&label=PSGallery%20Downloads)](https://www.powershellgallery.com/packages/Microsoft.Graph.Entra)
[![PSGallery Platform](https://img.shields.io/powershellgallery/p/Microsoft.Graph.Entra.svg?style=flat&logo=powershell&label=PSGallery%20Platform)](https://www.powershellgallery.com/packages/Microsoft.Graph.Entra)
[![GitHub issues](https://img.shields.io/github/issues/microsoftgraph/entra-powershell)](https://github.com/microsoftgraph/entra-powershell/issues)

# Microsoft Entra PowerShell (preview)

[Microsoft Entra PowerShell (preview)][learn.microsoft], is a command-line tool that allows administrators to manage and automate Microsoft Entra product family resources programmatically. This module is developed based on customer feedback to meet usability needs. Microsoft Entra PowerShell is meticulously designed to deliver a delightful, usable, and high-quality collection of PowerShell cmdlets for Entra administrators.

The module offers human-readable parameters, deliberate parameter set specification, inline documentation, and core PowerShell fundamentals like pipelining. The module builds upon the Microsoft Graph PowerShell SDK. It’s fully interoperable with all cmdlets in the Microsoft Graph PowerShell SDK.

The module also offers significant (over _98%_) compatibility  with the [deprecated AzureAD module][azureADDeprecationArticle] to accelerate migration.

Microsoft Entra PowerShell supports PowerShell version 5.1 and version 7+. We recommend using PowerShell version 7 or higher with the Microsoft Entra PowerShell module on all platforms, including Windows, Linux, and macOS.

## Modules

The following table contains a list of the Microsoft Entra PowerShell modules.

| Module                                             | Latest                          | Description |
| -------------------------------------------------- | ------------------------------- | ----------- |
| [`Microsoft.Graph.Entra`][entrapsgallery]          | [![mg]][entrapsgallery]         | v1.0 Module |
| [`Microsoft.Graph.Entra.Beta`][entrapsgallerybeta] | [![mgbeta]][entrapsgallerybeta] | Beta Module |

## Learn more

<p align="center">
   <a href="MOTIVATION.md">Our Motivation</a> |
  <a href="GET-STARTED.md">Get-Started: Installation & Usage</a> |
  <a href="#contributing">Contributing</a> |
  <a href="#known-issues">Known Issues</a> |
  <a href="#license">License</a>
</p>

<p align="center">
<strong>This module is under development (in public preview). It's NOT READY for Production environments.</strong>
</p>

> [!NOTE]  
> We are continually improving Microsoft Entra PowerShell throughout the public preview phase and beyond. Keep your module current by applying updates as soon as we notify you of a new version. Module updates will be done on regular cadence.

## Contribute

To contribute, see [contribution guide](CONTRIBUTING.md).

## Known Issues

- Some properties names change between the Azure AD PowerShell module and Microsoft Graph endpoints:
  - Parameter -Filter might not work correctly
  - Parameter -SearchString don't currently work
  - Output objects might be different
- "Assembly with same name is already loaded" - when there are multiple versions of `Microsoft.Graph.Authentication` modules installed.

## Product feedback and issues

If you find any bugs when using the Microsoft Entra PowerShell module, file an issue on our [GitHub issues][entraPowershellIssues] page.

This project adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information, see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) for questions or comments.

## License

Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT [license](LICENSE).

<!-- PS Gallery -->
[entrapsgallery]: https://www.powershellgallery.com/packages/Microsoft.Graph.Entra/
[entrapsgallerybeta]: https://www.powershellgallery.com/packages/Microsoft.Graph.Entra.Beta/

[mg]: https://img.shields.io/powershellgallery/v/Microsoft.Graph.Entra.svg?style=flat-square&label=Microsoft.Graph.Entra
[mgbeta]: https://img.shields.io/powershellgallery/v/Microsoft.Graph.Entra.Beta.svg?style=flat-square&label=Microsoft.Graph.Entra.Beta

[entraPowershellIssues]: https://github.com/microsoftgraph/entra-powershell/issues
[azureADDeprecationArticle]: https://techcommunity.microsoft.com/t5/microsoft-entra-blog/important-update-deprecation-of-azure-ad-powershell-and-msonline/ba-p/4094536
[learn.microsoft]: https://aka.ms/entra/ps
