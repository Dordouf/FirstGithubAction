Describe "Unit Tests - New File" {
    Context "Context - New-Item OK" {
        Mock -CommandName New-Item -MockWith {
           return $true   
        }
        It "New-File" {
            New-File -FilePath "C:\temp\test44.txt" | Should -Be $true
        }
    }

     Context "Context - New-Item KO" {
        Mock -CommandName New-Item -MockWith {
           write-error "error"   
        }
        It "New-File" {
            New-File -FilePath "C:\temp\test44.txt" | Should -Be $false
        }
    }
}
