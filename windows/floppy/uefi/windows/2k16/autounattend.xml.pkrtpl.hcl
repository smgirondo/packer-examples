<?xml version="1.0" encoding="utf-8"?>
<unattend xmlns="urn:schemas-microsoft-com:unattend">
  <settings pass="windowsPE">

    <!-- look for drivers on floppy -->
    <component name="Microsoft-Windows-PnpCustomizationsWinPE" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <DriverPaths>
        <PathAndCredentials wcm:keyValue="1" wcm:action="add">
          <Path>A:\</Path>
        </PathAndCredentials>
        <PathAndCredentials wcm:keyValue="1" wcm:action="add">
          <Path>E:\</Path>
        </PathAndCredentials>
      </DriverPaths>
    </component>

    <component xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="Microsoft-Windows-International-Core-WinPE" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS">
      <SetupUILanguage>
        <UILanguage>${locale}</UILanguage>
      </SetupUILanguage>
      <InputLocale>${locale}</InputLocale>
      <SystemLocale>${locale}</SystemLocale>
      <UILanguage>${locale}</UILanguage>
      <UILanguageFallback>${locale}</UILanguageFallback>
      <UserLocale>${locale}</UserLocale>
    </component>

    <component xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="Microsoft-Windows-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS">
      <DiskConfiguration>
          <Disk wcm:action="add">
              <DiskID>0</DiskID>
              <WillWipeDisk>true</WillWipeDisk>
              <CreatePartitions>
                  <CreatePartition wcm:action="add">
                      <Order>1</Order>
                      <Type>EFI</Type>
                      <Size>128</Size>
                  </CreatePartition>
                  <CreatePartition wcm:action="add">
                      <Order>2</Order>
                      <Size>16</Size>
                      <Type>MSR</Type>
                  </CreatePartition>
                  <CreatePartition wcm:action="add">
                      <Order>3</Order>
                      <Size>512</Size>
                      <Type>Primary</Type>
                  </CreatePartition>
              </CreatePartitions>
              <ModifyPartitions>
                  <ModifyPartition wcm:action="add">
                      <Order>1</Order>
                      <PartitionID>1</PartitionID>
                      <Format>FAT32</Format>
                      <Label>ESP</Label>
                  </ModifyPartition>
                  <ModifyPartition wcm:action="add">
                      <Order>2</Order>
                      <PartitionID>2</PartitionID>
                  </ModifyPartition>
                  <ModifyPartition wcm:action="add">
                      <Order>3</Order>
                      <PartitionID>3</PartitionID>
                      <Format>NTFS</Format>
                      <Label>WinRE</Label>
                      <TypeID>DE94BBA4-06D1-4D40-A16A-BFD50179D6AC</TypeID>
                  </ModifyPartition>
              </ModifyPartitions>
          </Disk>
          <Disk wcm:action="add">
              <DiskID>1</DiskID>
              <WillWipeDisk>true</WillWipeDisk>
              <CreatePartitions>
                  <CreatePartition wcm:action="add">
                      <Order>1</Order>
                      <Extend>true</Extend>
                      <Type>Primary</Type>
                  </CreatePartition>
              </CreatePartitions>
              <ModifyPartitions>
                  <ModifyPartition wcm:action="add">
                      <Format>NTFS</Format>
                      <Label>OS</Label>
                      <Letter>C</Letter>
                      <Order>1</Order>
                      <PartitionID>1</PartitionID>
                  </ModifyPartition>
              </ModifyPartitions>
          </Disk>
          <WillShowUI>OnError</WillShowUI>
      </DiskConfiguration>

      <ImageInstall>
        <OSImage>
          <InstallFrom>
            <MetaData wcm:action="add">
              <Key>/IMAGE/NAME </Key>
              <Value>Windows Server 2016 SERVERSTANDARD</Value>
            </MetaData>
          </InstallFrom>
          <InstallTo>
            <DiskID>1</DiskID>
            <PartitionID>1</PartitionID>
          </InstallTo>
        </OSImage>
      </ImageInstall>

      <UserData>
        <!-- Product Key from http://technet.microsoft.com/en-us/library/jj612867.aspx -->
        <ProductKey>
          <!-- Do not uncomment the Key element if you are using trial ISOs -->
          <!-- You must uncomment the Key element (and optionally insert your own key) if you are using retail or volume license ISOs -->
          <!-- <Key></Key> -->
          <WillShowUI>OnError</WillShowUI>
        </ProductKey>
        <AcceptEula>true</AcceptEula>
        <FullName>${organization_representative}</FullName>
        <Organization>${organization}</Organization>
      </UserData>
    </component>
  </settings>
  <settings pass="specialize">

    <component xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="Microsoft-Windows-Shell-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS">
      <OEMInformation>
        <HelpCustomized>false</HelpCustomized>
      </OEMInformation>
      <ComputerName>${vm_name}</ComputerName>
      <TimeZone>${timezone}</TimeZone>
      <RegisteredOwner/>
    </component>

    <!-- disable server manager auto-start -->
    <component xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="Microsoft-Windows-ServerManager-SvrMgrNc" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS">
      <DoNotOpenServerManagerAtLogon>${server_manager_not_open}</DoNotOpenServerManagerAtLogon>
    </component>

    <!-- disable annoying IE security  -->
    <component xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="Microsoft-Windows-IE-ESC" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS">
      <IEHardenAdmin>false</IEHardenAdmin>
      <IEHardenUser>false</IEHardenUser>
    </component>

  </settings>

  <settings pass="oobeSystem">
    <component xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="Microsoft-Windows-Shell-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS">

      <!-- logon this user automatically
           which runs first logon commands -->
      <AutoLogon>
        <Password>
          <Value>${winrm_password}</Value>
          <PlainText>true</PlainText>
        </Password>
        <Enabled>true</Enabled>
        <Username>${winrm_username}</Username>
      </AutoLogon>

      <FirstLogonCommands>

        <SynchronousCommand wcm:action="add">
          <CommandLine>cmd /c A:\configure.bat</CommandLine>
          <Description>Run configure script</Description>
          <Order>1</Order>
        </SynchronousCommand>

      </FirstLogonCommands>

      <OOBE>
        <HideEULAPage>true</HideEULAPage>
        <HideLocalAccountScreen>true</HideLocalAccountScreen>
        <HideOEMRegistrationScreen>true</HideOEMRegistrationScreen>
        <HideOnlineAccountScreens>true</HideOnlineAccountScreens>
        <HideWirelessSetupInOOBE>true</HideWirelessSetupInOOBE>
        <NetworkLocation>Home</NetworkLocation>
        <ProtectYourPC>1</ProtectYourPC>
      </OOBE>

      <UserAccounts>

        <AdministratorPassword>
          <Value>${win_admin_password}</Value>
          <PlainText>true</PlainText>
        </AdministratorPassword>

        <LocalAccounts>
          <LocalAccount wcm:action="add">
            <Password>
              <Value>${winrm_password}</Value>
              <PlainText>true</PlainText>
            </Password>
            <Group>administrators</Group>
            <DisplayName>${winrm_fullname}</DisplayName>
            <Name>${winrm_username}</Name>
            <Description>${winrm_fullname}</Description>
          </LocalAccount>
        </LocalAccounts>
      </UserAccounts>

      <RegisteredOwner/>

    </component>
  </settings>

  <settings pass="offlineServicing">

    <!-- disable notifications when programs try to make changes to the computer. -->
    <component xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="Microsoft-Windows-LUA-Settings" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS">
      <EnableLUA>false</EnableLUA>
    </component>
  </settings>

  <cpi:offlineImage xmlns:cpi="urn:schemas-microsoft-com:cpi" cpi:source="wim:c:/wim/install.wim#Windows Server 2012 R2 SERVERSTANDARD"/>

</unattend>
