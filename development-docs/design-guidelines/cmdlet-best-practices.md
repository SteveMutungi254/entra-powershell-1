# Cmdlet Best Practices

## Cmdlet Naming Conventions

The following are naming conventions to keep in mind when coming up with a name for your cmdlet.

### Verb-Noun Format

Cmdlet names should follow the _Verb-Noun_ format, where the verb is from the [list of approved PowerShell verbs][approved-verbs], and the noun is a specific noun describing a resource within your service.

### Noun Prefix

For Entra cmdlets, the noun must be prefixed with `Entra`.

### Pascal Case

From the [_Strongly Encouraged Development Guidelines_][strongly-encouraged-dev-guide]:

> _Use Pascal case for cmdlet names. In other words, capitalize the first letter of the verb and all terms used in the noun. For example, "Clear-ItemProperty"._

### Acronyms

Do capitalize both characters of two-character acronyms. For example, New-Entra*VM*.

Do capitalize only the first character of acronyms with three or more characters, which aligned with Pascal case. For example, Restart-Az*Vmss*, New-Az*Sql*Database.

#### Specific Noun and Noun Singularity

From the [_Strongly Encouraged Development Guidelines_][sd01-strongly-encouraged-development-guidelines]:

> _Nouns used in cmdlet naming need to be very specific so that the user can discover your cmdlets. The combination of specific nouns and the short list of approved verbs enable the user to quickly discover and anticipate functionality while avoiding duplication among cmdlet names._
>
> _To enhance the user experience, the noun that you choose for a cmdlet name should be singular. For example, use the name `Get-EntraUser` instead of `Get-EntraUsers`. It is best to follow this rule for all cmdlet names, even when a cmdlet is likely to act upon more than one item._

#### Set vs. Update

If your cmdlet is performing a **PATCH** operation (_that is, a partial replacement on the server), then the cmdlet should use the verb `Update`.

If your cmdlet is performing a **PUT** operation (_that is, a full replacement on the server), the cmdlet should use the verb `Set`.

#### Cmdlet Alias

If your service or resource has a different name, or if you want to shorten the cmdlet name for easier recall, you can add an alias attribute to your cmdlet to enable this functionality.

### Output Type

`OutputType` attribute lets the user know what the type of the object returned by the cmdlet is (found in the **Outputs** section of a cmdlet's help content). The type specified here should always be a single element and not an enumeration of elements.

#### Valid Output Types

If the cmdlet returns an object, the type of the object returned must be defined; the output type for a cmdlet should _never_ be `object`, `PSObject`, `PSCustomObject` or the like. Returning these types of objects makes it difficult for the user to anticipate which properties will be found on the object returned from the cmdlet. Returning Microsoft Graph types is highly recommended.

In order to preserve proper piping scenarios, the output type for a cmdlet should _never_ be a `string`. If a cmdlet is expected to return a `string`, the suggestion is to introduce a new type that encapsulates the `string` information as a property and return that object. The PowerShell language revolves around objects and passing them around cmdlets; returning `string` objects can introduce inconsistencies in the piping experience for users.

[approved-verbs]: https://learn.microsoft.com/powershell/scripting/developer/cmdlet/approved-verbs-for-windows-powershell-commands
[strongly-encouraged-dev-guide]: https://learn.microsoft.com/powershell/scripting/developer/cmdlet/strongly-encouraged-development-guidelines#use-pascal-case-for-cmdlet-names-sd02
[sd01-strongly-encouraged-development-guidelines]: https://learn.microsoft.com/powershell/scripting/developer/cmdlet/strongly-encouraged-development-guidelines#use-a-specific-noun-for-a-cmdlet-name-sd01
