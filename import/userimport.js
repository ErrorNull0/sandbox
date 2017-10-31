// IMPORT CONSTANTS  var USERIMPORTDEBUGMODE = false;
  var ITERMINALFORMURL = "/config/iTerminalAssociateUserAction.do?subaction=getITerminalUsers";  var ORBITALFORMURL = "/config/vtContactAction.do?subaction=first";
  //***DO NOT CHANGE THE ORDER OF THE ARRAYS***  var ORBITALCSVFORMFIELDS = new Array("VT Username", "Merchant Number", "Action", "First Name", "Last Name", "E.?mail",                                    "VT User Rights", "Contact", "Reporting Access", "Profile Management", "General Admin",                                    "Reporting Admin", "Receipt Admin", "MSR Admin", "VT Import", "Purchase Card Level III",                                     "Managed Billing Admin", "Auto E.?mail Admin", "Auth Recycling Admin", "Pinless Debit Admin",                                    "Account Updater Admin", "Soft Descriptor", "Gift Card Admin", "Phone", "Safetech Fraud", "Hosted Pay Page", "Limited Refund");
  //***DO NOT CHANGE THE ORDER OF THE ARRAYS***    var ITERMINALCSVFORMFIELDS = new Array("Username", "Merchant Number", "Action", "First Name", "Last Name", "E.?mail",                                           "iTerminal User Rights", "Phone", "Refund Access", "Void Access");  var USERIMPORTTIMEOUT = 50000;  var USERIMPORTPOLLINGTIME = 100;  var USERIMPORTNAMESECURITYPROMPT = true;  var USERIMPORTACCOUNTSECURITYPROMPT = true;  var USERIMPORTACCOUNTREPLACEPROMPT = false;  var USERIMPORTOVERRIDEAUTOSEARCH = false;  var USERIMPORTSALEMBINVALUE = '000001';  var USERIMPORTTAMPABINVALUE = '000002';  var USERIMPORTSALEMBINTEXT = 'Salem';  var USERIMPORTTAMPABINTEXT = 'Tampa';  var USERIMPORTMERCHANTCONTACTLEVELTEXT = "Merchant";  var USERIMPORTMERCHANTCONTACTLEVELVALUE = "M";  var USERIMPORTCHAINCONTACTLEVELTEXT = "Chain";  var USERIMPORTCHAINCONTACTLEVELVALUE = "C";    var IMPORTACTIONADDVALUE = 'add';  var IMPORTACTIONUPDATEVALUE = 'update';  var IMPORTACTIONDELETEVALUE = 'delete';    var IMPORTFIELDENABLEVALUE = true;  var IMPORTFIELDDISABLEVALUE = false;
  var TAMPAACCOUNTPADDING = 12;  var SALEMACCOUNTPADDING = 6;   var CHAINACCOUNTPADDING = 6;  // ORBITAL SEARCH FORM FIELD NAME CONSTANTS  var ORBITALUSERSEARCHFORMUSERNAMEFIELDNAME = "searchVTContact.userID";  var ORBITALUSERSEARCHFORMMERCHANTIDFIELDNAME = "searchVTContact.merchantID";  var ORBITALUSERSEARCHFORMCHAINIDFIELDNAME = "searchVTContact.chainID";  // ORBITAL ADD FORM FIELD NAME CONSTANTS  var ORBITALUSERADDFORMFIRSTNAMEFIELDNAME = "contact.firstName";  var ORBITALUSERADDFORMLASTNAMEFIELDNAME = "contact.lastName";  var ORBITALUSERADDFORMPHONENUMBERFIELDNAME = "contact.phone";  var ORBITALUSERADDFORMEMAILFIELDNAME = "contact.emailAddress";  var ORBITALUSERADDFORMCONTACTLEVELFIELDNAME = "contact.userContactLevel";  var ORBITALUSERADDFORMBINFIELDNAME = "contact.bin";  var ORBITALUSERADDFORMADMINRIGHTSFIELDNAME = "contact.adminRights";  var ORBITALUSERADDFORMUSERROLEFIELDNAME = "userProfile.vtUserRole";  var ORBITALUSERADDFORMLIMITEDREFUNDACCESSFIELDNAME = "userProfile.limitedRefundAccessIndr_checkbox";  var ORBITALUSERADDFORMUSERNAMEFIELDNAME = "userProfile.vtUserID";  var ORBITALUSERADDFORMSTATUSFIELDNAME = "userProfile.status_checkbox";  var ORBITALUSERADDFORMMASKACCOUNTNUMBERFIELDNAME = "userProfile.maskAccountNumber_checkbox";  var ORBITALUSERADDFORMSOFTDESCRIPTORROLEFIELDNAME = "userProfile.softDescriptor";  var ORBITALUSERADDFORMPROFILEMANAGEMENTROLEFIELDNAME = "userProfile.mgmtRole";  var ORBITALUSERADDFORMMSRADMINFIELDNAME = "userProfile.msrAdminAccess_checkbox";  var ORBITALUSERADDFORMREPORTINGADMINFIELDNAME = "userProfile.reportingAdminAccess_checkbox";  var ORBITALUSERADDFORMREPORTINGACCESSFIELDNAME = "userProfile.reportingAccess_checkbox";  var ORBITALUSERADDFORMGENERALADMINFIELDNAME = "userProfile.generalAdminAccess_checkbox";  var ORBITALUSERADDFORMFLEXCACHEADMINFIELDNAME = "userProfile.flexcacheAdminAccess_checkbox";  var ORBITALUSERADDFORMVTIMPORTACCESSFIELDNAME = "userProfile.importBatchFileFlag_checkbox";  var ORBITALUSERADDFORMPURCHASECARDADMINFIELDNAME = "userProfile.pcardLevel3Flag_checkbox";  var ORBITALUSERADDFORMRECEIPTADMINFIELDNAME = "userProfile.receiptAdminAccess_checkbox";  var ORBITALUSERADDFORMMANAGEDBILLINGADMINFIELDNAME = "userProfile.managedBillingAdminAccess_checkbox";  var ORBITALUSERADDFORMAUTHRECYCLEADMINFIELDNAME = "userProfile.authRecyclingAdminAccess_checkbox";  var ORBITALUSERADDFORMAUTOEMAILADMINFIELDNAME = "userProfile.autoEmailServiceAdminAccess_checkbox";  var ORBITALUSERADDFORMPINLESSDEBITADMINFIELDNAME = "userProfile.pinLessDebitAdminAccess_checkbox";  var ORBITALUSERADDFORMACCOUNTUPDATERADMINFIELDNAME = "userProfile.accountUpdaterAdminAccess_checkbox";  var ORBITALUSERADDFORMSAFETECHFRAUDADMINFIELDNAME = "userProfile.faAdminAccess_checkbox";  var ORBITALUSERADDFORMHOSTEDPAYPAGEADMINFIELDNAME = "userProfile.hppAdminAccess_checkbox";
// ORBITAL EDIT FORM FIELD NAME CONSTANTS  var ORBITALUSEREDITFORMACCOUNTNUMBERFIELDNAME = "merchantChainNumber";  var ORBITALUSEREDITFORMACCOUNTCHECKBOXFIELDNAME = "deletelist";
// ORBITAL DROPDOWN USER FORM VALUES AND TEXT CONSTANTS  var ORBITALUSERFORMADMINRIGHTSENABLEDVALUE = '1';  var ORBITALUSERFORMADMINRIGHTSENABLEDTEXT = 'Can Add/Delete/Reset all User IDs';  var ORBITALUSERFORMADMINRIGHTSDISABLEDVALUE = '';  var ORBITALUSERFORMADMINRIGHTSDISABLEDTEXT = 'Select Admin Rights...';  var ORBITALUSERFORMMERCHANTCONTACTLEVELVALUE = 'M';  var ORBITALUSERFORMMERCHANTCONTACTLEVELTEXT = 'Merchant';  var ORBITALUSERFORMCHAINCONTACTLEVELVALUE = 'C';  var ORBITALUSERFORMCHAINCONTACTLEVELTEXT = 'Chain';  var ORBITALUSERFORMSALEMBINVALUE = '000001';  var ORBITALUSERFORMTAMPABINVALUE = '000002';  var ORBITALUSERFORMSALEMBINTEXT = '000001';  var ORBITALUSERFORMTAMPABINTEXT = '000002';  var ORBITALUSERFORMUSERROLEREADONLYVALUE = '10';  var ORBITALUSERFORMUSERROLEREADONLYTEXT = 'Read Only';  var ORBITALUSERFORMUSERROLEAUTHONLYVALUE = '6';  var ORBITALUSERFORMUSERROLEAUTHONLYTEXT = 'Auth Only';  var ORBITALUSERFORMUSERROLEAUTHMARKVALUE = '2';  var ORBITALUSERFORMUSERROLEAUTHMARKTEXT = 'Auth & mark allowed';  var ORBITALUSERFORMUSERROLEAUTHMARKSPLITVALUE = '7';  var ORBITALUSERFORMUSERROLEAUTHMARKSPLITTEXT = 'Auth Mark & Split';  var ORBITALUSERFORMUSERROLEAUTHMARKCREDITVALUE = '11';  var ORBITALUSERFORMUSERROLEAUTHMARKCREDITTEXT = 'Auth, Mark, Credit';  var ORBITALUSERFORMUSERROLEAUTHMARKSPLITVOIDVALUE = '8';  var ORBITALUSERFORMUSERROLEAUTHMARKSPLITVOIDTEXT = 'Auth Mark Split & Void';  var ORBITALUSERFORMUSERROLEAUTHMARKSPLITVOIDEODVALUE = '9';  var ORBITALUSERFORMUSERROLEAUTHMARKSPLITVOIDEODTEXT = 'Auth Mark Split Void & EOD';  var ORBITALUSERFORMUSERROLEAUTHMARKREVCREDVALUE = '4';  var ORBITALUSERFORMUSERROLEAUTHMARKREVCREDTEXT = 'Auth, mark, rev & cred allowed';  var ORBITALUSERFORMUSERROLEEVERYTHINGALLOWEDVALUE = '5';  var ORBITALUSERFORMUSERROLEEVERYTHINGALLOWEDTEXT = 'Everything allowed';  var ORBITALUSERFORMSOFTDESCRIPTORROLEREADVALUE = 'R';  var ORBITALUSERFORMSOFTDESCRIPTORROLEREADTEXT = 'Read';  var ORBITALUSERFORMSOFTDESCRIPTORROLEUPDATEVALUE = 'U';  var ORBITALUSERFORMSOFTDESCRIPTORROLEUPDATETEXT = 'Update';  var ORBITALUSERFORMSOFTDESCRIPTORROLECUSTOMVALUE = 'C';  var ORBITALUSERFORMSOFTDESCRIPTORROLECUSTOMTEXT = 'Read & custom';  var ORBITALUSERFORMSOFTDESCRIPTORROLENONEVALUE = '';  var ORBITALUSERFORMSOFTDESCRIPTORROLENONETEXT = 'None';  var ORBITALUSERFORMPROFILEMANAGEMENTROLEREADVALUE = 'R';  var ORBITALUSERFORMPROFILEMANAGEMENTROLEREADTEXT = 'User Role';  var ORBITALUSERFORMPROFILEMANAGEMENTROLEUPDATEVALUE = 'U';  var ORBITALUSERFORMPROFILEMANAGEMENTROLEUPDATETEXT = 'Administrator Role';  var ORBITALUSERFORMPROFILEMANAGEMENTROLENONEVALUE = 'N';  var ORBITALUSERFORMPROFILEMANAGEMENTROLENONETEXT = 'No Roles';
// ORBITAL SEARCH FORM BUTTON FIELD VALUE CONSTANTS  var ORBITALUSERSEARCHFORMADDUSERBUTTONVALUE = "add new";  var ORBITALUSERSEARCHFORMSEARCHBUTTONVALUE = "apply";  var ORBITALUSERSEARCHFORMCLEARSEARCHBUTTONVALUE = "clear";
// ORBITAL USER FORM BUTTON FIELD VALUE CONSTANTS  var ORBITALUSERFORMSAVEUSERBUTTONVALUE = "save";  var ORBITALUSERFORMADDACCOUNTBUTTONVALUE = "add";  var ORBITALUSERFORMDELETEACCOUNTBUTTONVALUE = "delete checked";
// ORBITAL FORM REGULAR EXPRESSION CONSTANTS  var ORBITALFORMUPDATECONFIRMATIONREGEXP = /class\s*\=\s*.?\s*positive\s*.?\s*/i;  var ORBITALUSERFORMADDUSERREGEXP = /new user.*\[(.+)\]/i;
// ITERMINAL SEARCH FORM FIELD NAMES CONSTANTS  var ITERMINALUSERSEARCHFORMUSERNAMEFIELDNAME = 'searchITerminalUser.userID';  var ITERMINALUSERSEARCHFORMMERCHANTIDFIELDNAME = 'searchITerminalUser.merchantID';  var ITERMINALUSERSEARCHFORMCHAINIDFIELDNAME = 'searchITerminalUser.chainID';
// ITERMINAL SEARCH FORM BUTTON VALUES CONSTANTS  var ITERMINALUSERSEARCHFORMSEARCHBUTTONVALUE = "apply";  var ITERMINALUSERSEARCHFORMCLEARSEARCHBUTTONVALUE = "clear";  var ITERMINALUSERSEARCHFORMADDUSERBUTTONVALUE = "add new user";
// ITERMINAL USER ADD FORM FIELD NAMES CONSTANTS  var ITERMINALNOEXISTINGUSERFOUNDCONFIRMATION = '1';  var ITERMINALEXISTINGUSERFOUNDCONFIRMATION = '2';  var ITERMINALUSERADDFORMOVERRIDEAUTOSEARCHNAME = 'overrideAutoSearch';
  var ITERMINALUSERADDFORMCOMPANYNAMEFIELDNAME = 'newUser.companyName';  var ITERMINALUSERADDFORMFIRSTNAMEFIELDNAME = 'newUser.firstName';  var ITERMINALUSERADDFORMLASTNAMEFIELDNAME = 'newUser.lastName';  var ITERMINALUSERADDFORMPHONEFIELDNAME = 'newUser.phone';  var ITERMINALUSERADDFORMEMAILFIELDNAME = 'newUser.email';  var ITERMINALUSERADDFORMUSERROLEFIELDNAME = 'newUser.userRole';  var ITERMINALUSERADDFORMCONTACTLEVELFIELDNAME = "newUser.merchantChainInd";  var ITERMINALUSERADDFORMSTATUSFIELDNAME = 'newUser.status';  var ITERMINALUSERADDFORMUSERNAMEFIELDNAME = 'newUser.userID';  var ITERMINALUSERADDFORMREFUNDFIELDNAME = 'newUser.refundAccess';  var ITERMINALUSERADDFORMVOIDFIELDNAME = 'newUser.voidAccess_checkbox';
// ITERMINAL USER ADD FORM BUTTON VALUES CONSTANTS  var ITERMINALUSERADDFORMADDUSERBUTTONVALUE = "add user";  var ITERMINALUSERADDFORMADDNEWUSERCONFIRMATIONBUTTONVALUE = "add new user";  var ITERMINALUSERADDFORMADDEXISTINGUSERCONFIRMATIONBUTTONVALUE = "add existing user";
// ITERMINAL USER EDIT FORM FIELD NAMES CONSTANTS  var ITERMINALUSEREDITFORMCOMPANYNAMEFIELDNAME = 'existingUser.companyName';  var ITERMINALUSEREDITFORMFIRSTNAMEFIELDNAME = 'existingUser.firstName';  var ITERMINALUSEREDITFORMLASTNAMEFIELDNAME = 'existingUser.lastName';  var ITERMINALUSEREDITFORMPHONEFIELDNAME = 'existingUser.phone';  var ITERMINALUSEREDITFORMEMAILFIELDNAME = 'existingUser.email';  var ITERMINALUSEREDITFORMUSERROLEFIELDNAME = 'existingUser.userRole';  var ITERMINALUSEREDITFORMCONTACTLEVELFIELDNAME = "existingUser.merchantChainInd";  var ITERMINALUSEREDITFORMSTATUSFIELDNAME = 'existingUser.status';  var ITERMINALUSEREDITFORMACCOUNTNUMBERFIELDNAME = 'merchantChainNumber';  var ITERMINALUSEREDITFORMACCOUNTCHECKBOXFIELDNAME = "deleteList";  var ITERMINALUSEREDITFORMREFUNDFIELDNAME = 'existingUser.refundAccess';  var ITERMINALUSEREDITFORMVOIDFIELDNAME = 'existingUser.voidAccess_checkbox';
// ITERMINAL USER EDIT FORM BUTTON VALUES CONSTANTS  var ITERMINALUSEREDITFORMUSERBUTTONVALUE = "update user";  var ITERMINALUSEREDITFORMADDMERCHANTACCOUNTBUTTONVALUE = "add merchant";  var ITERMINALUSEREDITFORMADDCHAINACCOUNTBUTTONVALUE = "add chain";
// ITERMINAL DROPDOWN USER FORM VALUES AND TEXT CONSTANTS  var ITERMINALUSERFORMUSERROLEREADONLYVALUE = 'A';  var ITERMINALUSERFORMUSERROLEREADONLYTEXT = 'Admin read only access';  var ITERMINALUSERFORMUSERROLESTOREACCESSVALUE = 'S';  var ITERMINALUSERFORMUSERROLESTOREACCESSTEXT = 'Store regular access';  var ITERMINALUSERFORMUSERROLEMANAGERACCESSVALUE = 'M';  var ITERMINALUSERFORMUSERROLEMANAGERACCESSTEXT = 'Manager full access no security restrictions';  var ITERMINALUSERFORMMERCHANTCONTACTLEVELVALUE = 'M';  var ITERMINALUSERFORMMERCHANTCONTACTLEVELTEXT = 'Merchant';  var ITERMINALUSERFORMCHAINCONTACTLEVELVALUE = 'C';  var ITERMINALUSERFORMCHAINCONTACTLEVELTEXT = 'Chain';  var ITERMINALUSERFORMSTATUSACTIVEVALUE = 'N';  var ITERMINALUSERFORMSTATUSACTIVETEXT = 'Active';  var ITERMINALUSERFORMSTATUSINACTIVEVALUE = 'Y';  var ITERMINALUSERFORMSTATUSINACTIVETEXT = 'Inactive';  var ITERMINALUSERFORMREFUNDFULLVALUE = 'FR';  var ITERMINALUSERFORMREFUNDFULLTEXT = 'Full Refund';  var ITERMINALUSERFORMREFUNDQUICKVALUE = 'QR';  var ITERMINALUSERFORMREFUNDQUICKTEXT = 'Quick Refund';  var ITERMINALUSERFORMREFUNDNOVALUE = 'NR';  var ITERMINALUSERFORMREFUNDNOTEXT = 'No Refund';
  
// ITERMINAL FORM REGULAR EXPRESSION CONSTANTS  var ITERMINALFORMUPDATECONFIRMATIONREGEXP = /class\s*\=\s*.?\s*positive\s*.?\s*/i;  var ITERMINALUSERFORMADDUSERREGEXP = /new user.*\[(.+)\]/i;  var ITERMINALFORMADDNOUSERFOUNDCONFIRMATIONREGEXP = /No existing users found/i;  var ITERMINALFORMADDEXISTINGUSERFOUNDCONFIRMATIONREGEXP = />Apps</i;
// Namespace verificationif(!window.FumDum)  var FumDum = new FumDumNamespace();else if(window.FumDum.className != 'FumDumNamespace')  throw new Error('FumDum has already been defined so unable to import namespace');
//Namespace Declarationfunction FumDumNamespace(){  this.className = 'FumDumNamespace';}
//Event ClassFumDum.Event = function(){  var message = '';  var target = '';  var type = '';  this.className = 'Event';
  this.setMessage = function(value){    message = value;  }
  this.getMessage = function(){    return message;  } 
  this.setTarget = function(value){    target = value;  }
  this.getTarget = function(){    return target;  }
  this.setType = function(value){    if(typeof value != 'string')      throw new Error('Event.setType: Event type must be a string');
    type = value;  }
  this.getType = function(){    return type;  }
  this.toString = function(){    return type + ": " + message;  }
}//EOC

// Namespace verificationif(!window.FumDum)  var FumDum = new FumDumNamespace();else if(window.FumDum.className != 'FumDumNamespace')  throw new Error('FumDum has already been defined so unable to import namespace');
// Dependenciesif(!window.FumDum.Event)  throw new Error('FumDum.Event class required');
//Namespace Declarationfunction FumDumNamespace(){  this.className = 'FumDumNamespace';}
//FloatingWindow ClassFumDum.FloatingWindow = function(){  var window = self.document.createElement("DIV");  var titleBar = self.document.createElement("DIV");  var contentPane = self.document.createElement("DIV");  this.className = 'FloatingWindow';  var myself = this; //Used in events where the browser replaces "this" with a reference to the object on which the event occured.  var name ="";
  //TitleBar Layout  var titleBarLayout = self.document.createElement("TABLE");    var titleBarRow = titleBarLayout.insertRow(-1);  titleBarLayout.style.width = '100%';
  var titleCell = titleBarRow.insertCell(-1);
  exitCell = titleBarRow.insertCell(-1);  exitCell.onmouseover = exitCell.style.cursor = 'pointer';  exitCell.onclick = function(){myself.hide();};  exitCell.innerHTML = "<b>x&nbsp;</b>";  exitCell.style.textAlign = 'right';    titleBar.appendChild(titleBarLayout);      window.style.position = 'absolute';  window.style.zIndex = 1;  window.style.visibility = 'hidden';  contentPane.style.padding="5px";  titleBar.style.backgroundColor='silver';
  window.appendChild(titleBar);  window.appendChild(contentPane);  self.document.body.appendChild(window);
  this.setName = function(value){    name = value;  }
  this.getName = function(){    return name;  }
  this.setTitle = function(title){    titleCell.innerHTML = title;  }
  this.getTitle = function(){    return titleCell.innerHTML;  }
  //Set Listener  this.addListener = function(method){    if(typeof method != 'function')      throw new Error('FloatingWindow.addListener: Listener must be a method.');          exitCell.onclick = function(){      var event = new FumDum.Event();      event.setType('FloatingWindow');      event.setTarget(myself);      event.setMessage('closewindow');      method(event);    }      }
  this.setBackgroundColor = function(color){    if(typeof color != 'string')      throw new Error('FloatingWindow.setBackgroundColor: Background color must be a string');
    contentPane.style.backgroundColor = color;  }
  this.setBorder = function(border){    if(typeof border != 'string')      throw new Error('FloatingWindow.setBorder: Border must be a string');
    window.style.border = border;  }
  this.setZIndex = function(index){    if(typeof index != 'number')      throw new Error('FloatingWindow.setZIndex: Index must be a number');
    window.style.zIndex = index;  }
  this.setPosition = function(x, y){    x = parseInt(x);    if(isNaN(x))      throw new Error('FloatingWindow.setPosition: X coordinate must be a number');
    y = parseInt(y);    if(isNaN(y))      throw new Error('FloatingWindow.setPosition: Y coordinate must be a number');
    window.style.left = x;    window.style.top = y;  }
  this.setHeight = function(y){    window.style.height = y;  }
  this.setWidth = function(x){    window.style.width = x;    window.style.maxWidth = x;    window.style.wordWrap = "break-word";  }
  this.setHTML = function(html){    if(typeof html != 'string')      throw new Error('FloatingWindow.setHTML: HTML must be a string');
    contentPane.innerHTML = html;  }    this.show = function(){    window.style.visibility = 'visible';  }
  this.hide = function(){    window.style.visibility = 'hidden';  }  } //EOC

// Namespace verificationif(!window.FumDum)  var FumDum = new FumDumNamespace();else if(window.FumDum.className != 'FumDumNamespace')  throw new Error('FumDum has already been defined so unable to import namespace');
//Namespace Declarationfunction FumDumNamespace(){  this.className = 'FumDumNamespace';}
//CSVParser ClassFumDum.CSVParser = function(){  var records;  var currentRecord = 0;  var parseCharacter = ',';
  this.parse = function(data){    records = new Array();    currentRecord = 0;
    if(!data)      throw new Error("CSVParser: No data");
    if(data.indexOf("\u000D\u000A"))      records = data.split("\u000D\u000A");    else if(data.indexOf("\u000A"))      records = data.split("\u000A");    else if(data.indexOf("\u000D"))      records = data.split("\u000D");    else      throw new Error("CSVParser: The csv record line terminator is not recognized");
    for(var i=0; i<records.length; ++i)      records[i] = parseFields(records[i]);
    records.push(undefined);  }
  var parseFields = function(record){    var char;    var charIndex=-1;    var escape = false;    var tokens = new Array();    var tokenIndex=0;
    tokens[tokenIndex] = "";    while(char = record.charAt(++charIndex)){
      switch(char){        case parseCharacter:          if(escape)            tokens[tokenIndex] += char;          else{            ++tokenIndex;            tokens[tokenIndex] = "";          }        break;
        case '"':          if(record.charAt(charIndex+1) == "\""){            tokens[tokenIndex] += char;            ++charIndex;          }          else            (escape)? escape = false: escape = true;        break;
        default:          tokens[tokenIndex] += char;        break;      }    }
    tokens.push(undefined);    return tokens;  }
  this.getRecord = function(){    if(!records)      return undefined;
    var record = records[currentRecord];
    if(currentRecord < records.length)      ++currentRecord;          return record;  }
  this.getRecordCount = function(){    if(records && records.length)      return records.length - 1;
    return 0;  }
  this.setParseCharacter = function(char){    parseCharacter = char;  }
}//EOC
String.prototype.trim = function() { return this.replace(/^\s+|\s+$/g,"");}
function ImportInterface(){
  this.addListener = function(method){    if(typeof method != 'function')      throw new Error("ImportInterface: The listener must be a method");
    importWindow.addListener(method);    messageWindow.addListener(method);
    processButton.onclick = function(){      var event = new FumDum.Event();      event.setType("ImportInterface");      event.setMessage("processButton.click");      method(event);    };
    importSettingsLink.onclick = function(){      var event = new FumDum.Event();      event.setType("ImportInterface");      event.setMessage("importSettings.click");      method(event);      return false;    };
     importReportLink.onclick = function(){      var event = new FumDum.Event();      event.setType("ImportInterface");      event.setMessage("importReport.click");      method(event);      return false;    };
    usernameClipboardLink.onclick = function(){      var event = new FumDum.Event();      event.setType("ImportInterface");      event.setMessage("usernameClipboard.click");      method(event);      return false;    };
    reportClipboardLink.onclick = function(){      var event = new FumDum.Event();      event.setType("ImportInterface");      event.setMessage("reportClipboard.click");      method(event);      return false;    };  }
  this.show = function(){    importWindow.show();  }
  this.hide = function(){    importWindow.hide();  }
  this.showMessage = function(title, message){    messageWindow.setTitle(title);    messageWindow.setHTML(message);    messageWindow.show();  }
  this.toggleImportSettings = function(){    (importSettings.style.display == "none")? importSettings.style.display = "block": importSettings.style.display = "none";  }
  this.toggleImportReport = function(){    (importReport.style.display == "none")? importReport.style.display = "block": importReport.style.display = "none";
    if(clipboardData && clipboardData.setData)      (clipboardTable.style.display == "none")? clipboardTable.style.display = "block": clipboardTable.style.display = "none";  }
  this.showImportReport = function(){    if(importReport.style.display == "none")      importReport.style.display = "block";
    if(clipboardTable.style.display == "none")      clipboardTable.style.display = "block";  }
  this.hideImportReport = function(){    if(importReport.style.display != "none")      importReport.style.display = "none";
    if(clipboardTable.style.display == "none")      clipboardTable.style.display = "none";  }
  this.setImportReport = function(report){    importReport.innerHTML = report;  }
  this.disableImport = function(){    processButton.value = "Processing";    processButton.disabled = true;  }
  this.enableImport = function(){    processButton.value = "Process";    processButton.disabled = false;  }
  this.getImportData = function(){    return importDataField.value.trim();      }
  this.getUserSystem = function(){    return userSystemSelection.value;  }
  this.getUserBin = function(){    return userBinSelection.value;  }
  this.getUserLevel = function(){    return userLevelSelection.value;  }
  this.getAccountReplacePrompt = function(){    return accountReplacePromptCheckbox.checked;  }
  this.getAccountSecurityPrompt = function(){    return accountSecurityPromptCheckbox.checked;  }
  this.getNameSecurityPrompt = function(){    return nameSecurityPromptCheckbox.checked;  }
  this.getOverrideAutoSearch = function(){    return overrideAutoSearchCheckbox.checked;  }
  this.getDebugMode = function(){    return debugModeCheckbox.checked;  }
  this.getImportTimeout = function(){      var timeout = parseInt(timeoutField.value);
      if(isNaN(timeout))        throw new Error("ImportInterface.getImportTimeout: The timeout value is invalid.");            return timeout;  }
  var importWindow;  var messageWindow;  var myself = this;  var timeoutField;  var debugModeCheckbox;  var userLevelSelection;  var userBinSelection;  var userSystemSelection;  var importDataField;  var processButton;  var importReport;  var importReportLink;  var importSettings;  var importSettingsLink;  var accountReplacePromptCheckbox;  var accountSecurityPromptCheckbox;  var nameSecurityPromptCheckbox;  var overrideAutoSearchCheckbox;  var clipboardTable;  var usernameClipboardLink;  var reportClipboardLink;
  importWindow = new FumDum.FloatingWindow("<span>User Import:</span>");  importWindow.setTitle("<b>ConfigUI User Import Utility</b>");  importWindow.setBorder("2px groove gray");  importWindow.setZIndex(1);  importWindow.setPosition(0,0);  importWindow.setBackgroundColor("White");  importWindow.setHTML("<div style='width:90%; font-size:10pt; font-family:arial'>"                          +"Please include the column headers from the import form to ensure the data is in the correct format<br/>"                          +"<textarea style='width:100%' id='importData' rows='12'></textarea><br/>"                          +"<a id='importSettingsLink' href='#'>Additional Import Settings</a>"                          +"<div id='importSettings' style='display:none'>"                          +"<fieldset><br/><b>Enable debug (step by step import): </b>"                          +"<input type='checkbox' id='debugMode' name='debugMode'>"                          +"<br/><br/>"                          +"<b>User import timeout (milliseconds): </b>"                          +"<input id='timeout' type='text' size='4' defaultValue='5000' value='5000'></input>"                          +"<br/><br/>"                          +"<b>Security Import Prompts:</b><br/>"                          +"<input type='checkbox' id='nameSecurityPromptCheckbox'>Prompt during an update when the provided first and last name do not match user setup.</input><br/>"                          +"<input type='checkbox' id='accountSecurityPromptCheckbox'>Prompt during an update when none of the provided accounts are linked to the user.</input><br/>"                          +"</fieldset></div>"                          +"</div><br/><br/>"
                          +"<div>"                          +"<table>"                          +"<tr>"                          +"<td><b>User's System: </b></td>"                          +"<td><select id='userSystem' name='userSystem'>"                          +"<option selected='selected' value='orbital'>Orbital</option>"                          +"<option value='iterminal'>iTerminal</option>"                          +"</select></td>"                          +"</tr>"                          +"<tr>"                          +"<td><b>User's BIN: </b></td>"                          +"<td><select id='userBin' name='userBin'>"                          +"<option selected='selected' value='" + USERIMPORTTAMPABINVALUE + "'>" + USERIMPORTTAMPABINTEXT + "</option>"                          +"<option value='" + USERIMPORTSALEMBINVALUE + "'>" + USERIMPORTSALEMBINTEXT + "</option>"                          +"</select></td>"                          +"</tr>"                          +"<tr>"                          +"<td><b>User Level: </b></td>"                          +"<td><select id='userLevel' name='userLevel'>"                          +"<option selected='selected' value='" + USERIMPORTMERCHANTCONTACTLEVELVALUE + "'>" + USERIMPORTMERCHANTCONTACTLEVELTEXT + "</option>"                          +"<option value='" + USERIMPORTCHAINCONTACTLEVELVALUE + "'>" + USERIMPORTCHAINCONTACTLEVELTEXT + "</option>"                          +"</select></td>"                          +"</table>"                          +"<input type='checkbox' id='overrideAutoSearchCheckbox'>Override auto user search.</input><br/><br/>"                          +"<b>Import Prompts:</b><br/>"                          +"<input type='checkbox' id='accountReplacePromptCheckbox'>Prompt during an update to replace existing user accounts (appends accounts by default).</input><br/>"
                          +"<br/><br/><br/>"                          +"<input type='button' id='processButton' value='Process'></input><br/><br/><br/>"                          +"</div>"
                          +"<div>"                          +"<a id='importReportLink' href='#'><h3>Import Report</h3></a>"                          +"<hr></hr>"                          +"<table id='clipboardTable' style='width:100%; display:none'>"                          +"<tr>"                          +"<td align='right'><a id='usernameClipboardLink' href='#'>Copy Usernames to Clipboard</a><br/><a id='reportClipboardLink' href='#'></a></td>"                          +"</tr>"                          +"</table>"                          +"<div id='importReport' style='display:none'></div><br/><br/>"                          +"</div>");  importWindow.setWidth("99%");
  messageWindow = new FumDum.FloatingWindow("<span>Current Status (click the X to cancel import)</span>");  messageWindow.setBorder("2px groove gray");  messageWindow.setZIndex(2);  messageWindow.setPosition((document.documentElement.clientWidth - 510) + "px",0 + "px");  messageWindow.setWidth("500px");  messageWindow.setBackgroundColor("White");
  if(!(timeoutField = document.getElementById("timeout")))    throw new Error("ImportInterface.constructor: The timeout field could not be retrieved");
  if(!(debugModeCheckbox = document.getElementById("debugMode")))    throw new Error("ImportInterface.constructor: The debug mode selection could not be retrieved");
  if(!(userLevelSelection = document.getElementById("userLevel")))    throw new Error("ImportInterface.constructor: The user level selection could not be retrieved");
  if(!(userBinSelection = document.getElementById("userBin")))    throw new Error("ImportInterface.constructor: The user bin selection could not be retrieved");
  if(!(userSystemSelection = document.getElementById("userSystem")))    throw new Error("ImportInterface.constructor: The user system selection could not be retrieved");
  if(!(accountReplacePromptCheckbox = document.getElementById("accountReplacePromptCheckbox")))    throw new Error("ImportInterface.constructor: The account replace prompt checkbox could not be retrieved");
  if(!(accountSecurityPromptCheckbox = document.getElementById("accountSecurityPromptCheckbox")))    throw new Error("ImportInterface.constructor: The account security prompt checkbox could not be retrieved");
  if(!(nameSecurityPromptCheckbox = document.getElementById("nameSecurityPromptCheckbox")))    throw new Error("ImportInterface.constructor: The name security prompt checkbox could not be retrieved");
  if(!(overrideAutoSearchCheckbox = document.getElementById("overrideAutoSearchCheckbox")))    throw new Error("ImportInterface.constructor: The override auto search checkbox could not be retrieved");
  if(!(importDataField = document.getElementById("importData")))    throw new Error("ImportInterface.constructor: The import data field could not be retrieved");
  if(!(processButton = document.getElementById("processButton")))    throw new Error("ImportInterface.constructor: The process button could not be retrieved");
  if(!(importReport = document.getElementById("importReport")))    throw new Error("ImportInterface.constructor: The import report could not be retrieved");
  if(!(importSettings = document.getElementById("importSettings")))    throw new Error("ImportInterface.constructor: The import report settings could not be retrieved");
  if(!(importReportLink = document.getElementById("importReportLink")))    throw new Error("ImportInterface.constructor: The import report link could not be retrieved");
  if(!(importSettingsLink = document.getElementById("importSettingsLink")))    throw new Error("ImportInterface.constructor: The import report settings Link could not be retrieved");
  if(!(clipboardTable = document.getElementById("clipboardTable")))    throw new Error("ImportInterface.constructor: The clipboard table could not be retrieved");
  if(!(usernameClipboardLink = document.getElementById("usernameClipboardLink")))    throw new Error("ImportInterface.constructor: The username clipboard link could not be retrieved");
  if(!(reportClipboardLink = document.getElementById("reportClipboardLink")))    throw new Error("ImportInterface.constructor: The report clipboard link could not be retrieved");

  timeoutField.value = USERIMPORTTIMEOUT;
  if(USERIMPORTDEBUGMODE)    debugModeCheckbox.checked = true;
  if(USERIMPORTNAMESECURITYPROMPT)    nameSecurityPromptCheckbox.checked = true;
  if(USERIMPORTACCOUNTSECURITYPROMPT)    accountSecurityPromptCheckbox.checked = true;
  if(USERIMPORTACCOUNTREPLACEPROMPT)    accountReplacePromptCheckbox.checked = true;
  if(USERIMPORTOVERRIDEAUTOSEARCH)    overrideAutoSearchCheckbox.checked = true;
  var validateFields = function(){    if(userSystem.value.toLowerCase() == 'iterminal'){      userBin.value = USERIMPORTTAMPABINVALUE;      userBin.disabled = true;      overrideAutoSearchCheckbox.disabled = false;    }    else{      userBin.disabled = false;      overrideAutoSearchCheckbox.disabled = true;      overrideAutoSearchCheckbox.checked = false;    }  }
  addEventListener(userSystem, 'change', validateFields, false);   validateFields();
}//EOC
function UserImportCtrl(){  var userSystem;  var userBin;  var userLevel;  var importData;  var importWindow;  var debugMode;  var accountReplacePrompt;  var overrideAutoSearch;
  var dataManager;  var userParser;        var currentRecord;  var currentUser;  var csvImportFieldPositions;  var importHalt;
  var myself = this;  var processedUsers;  var processedReport;  var exceptionReport;
  this.startImport = function(){  try{    importWindow.showMessage("Import Status (click X to stop the import)", "Import initializing");    dataManager = '';    debugMode = false;    importHalt = false;    userParser = new FumDum.CSVParser();          currentRecord = 0;    currentUser = '';    processedReport = '';    exceptionReport = '';    csvImportFieldPositions = new Array();    processedUsers = new Array();
    importWindow.disableImport();    importWindow.setImportReport("No report data available");    userSystem = importWindow.getUserSystem().toLowerCase();    userBin = importWindow.getUserBin();    userLevel = importWindow.getUserLevel();    importData = importWindow.getImportData();    accountReplacePrompt = importWindow.getAccountReplacePrompt();    overrideAutoSearch = importWindow.getOverrideAutoSearch();
    if(importData.split("\n")[0].split("\t").length > importData.split("\n")[0].split(",").length)      userParser.setParseCharacter("\t");
    userParser.parse(importData);
    switch(userSystem){      case 'orbital':        dataManager = new OrbitalDM();      break;
      case 'iterminal':        dataManager = new IterminalDM();        dataManager.setOverrideAutoSearch(overrideAutoSearch);      break;
      default:        throw new Error("UserImportCtrl.startImport: The user's system is not recognized");      break;     }//EOS
    if(importWindow.getDebugMode()){      debugMode = true;      dataManager.setDebugMode(debugMode);    }    dataManager.setAccountReplacePrompt(accountReplacePrompt);    dataManager.setTimeout(importWindow.getImportTimeout());    dataManager.addListener(function(event){      if(debugMode)        alert("Status: DM Message");
      switch(event.getType()){        case 'OrbitalDM.failure':        case 'IterminalDM.failure':          userImportFail(event.getMessage());        break;         case 'OrbitalDM.success':        case 'IterminalDM.success':          userImportSuccess();        break;         default:          alert("Unknown event: " + event.getType() + " " + event.getMessage());          stopImport();          return;        break;
      }//EOS    });
    //parent.focus();
    importHeader();    continueImport();  }  catch(e){    alert("UserImportCtrl.startImport: The import process failed to start\n\nReason:\n" + (e.description || e));    stopImport();    return;  }
  }//EOF
  var userImportFail = function(reason){    var reasonLog = '';    var userLog = '';    var username = "&nbsp;";
    importWindow.showMessage("Import Status (click X to stop the import)", "Error on record "                            + currentRecord + " of " + userParser.getRecordCount() + "<br/><br/>"                            + "Record: " + currentUser);        
    if(reason)      var reasonLog = "<div style='padding-left:20px'><b>User Exception Log</b><br/>" + reason.replace(/\n/g,"\n<br/>") + "</div>";
    if(currentUser.getMessage && currentUser.getMessage())      userLog = "<div style='padding-left:20px'><b>User Warning Log</b><br/>" + currentUser.getMessage().replace(/\n/g,"\n<br/>") + "</div>";
    if(currentUser.getUsername && currentUser.getUsername())      username = currentUser.getUsername();
    //exceptionReport += "<tr valign='top'><td>" + username + "</td><td>" + currentUser + userLog + reasonLog + "</td></tr>";    exceptionReport += currentUser + "\n<br/>" + userLog + reasonLog;
    if(!confirm("The following user did not import successfully. Would you like to continue?" + "\n\nReason: " + reason + "\n\nUser record: " + currentUser)){      stopImport();      return;    }    else      continueImport();  }
  var userImportSuccess = function(){    var userLog = '';    var username = "&nbsp;";
    importWindow.showMessage("Import Status (click X to stop the import)", "Processed record "                            + currentRecord + " of " + userParser.getRecordCount() + "<br/><br/>"                            + "Record: " + currentUser); 
    processedUsers[currentRecord - 2] = currentUser;
    if(currentUser.getMessage && currentUser.getMessage())      userLog = "<div style='padding-left:20px'><b>User Warning Log</b><br/>" + currentUser.getMessage().replace(/\n/g,"\n<br/>") + "</div>";
    if(currentUser.getUsername && currentUser.getUsername())      username = currentUser.getUsername();
    //processedReport += "<tr valign='top'><td>" + username + "</td><td>" + currentUser + userLog + "</td></tr>";    processedReport += currentUser  + "\n<br/>" + userLog;
    continueImport();  }
  var continueImport = function(){    try{      importUser();    }    catch(e){      userImportFail(e.description || e);    }  }
  var stopImport = function(){    importWindow.enableImport();
    if(dataManager)      dataManager.close();
    if(processedReport || exceptionReport)      importWindow.setImportReport("<h3>Processed Users</h3>"                                    //+ "<table width='100%'>"                                   //+ "<tr><th style='background-color:silver'>Username</th><th style='background-color:silver'>User Record</th></tr>"                                   + processedReport                                    //+ "</table>"                                   +"<h3>Exception Users</h3>"                                   //+ "<table width='100%'>"                                    //+ "<tr><th style='background-color:silver'>Username</th><th style='background-color:silver'>User Record</th></tr>"                                   + exceptionReport);                                   //+ "</table>");   
    importWindow.showImportReport();
  }//EOF
  var importUser = function(){  try{    //GET USER RECORD
    currentUser = '';    if(importHalt || (!(userRecord = userParser.getRecord()))){      stopImport();      return;    }     if(debugMode)      alert("Status: Reading user record");
    currentUser = userRecord;     switch(userSystem){      case 'orbital':            //CREATE ORBITAL USER          user = new OrbitalUser();           user.setContactLevel(userLevel);            user.setBin(userBin);
          if(csvImportFieldPositions[0] != -1)            user.setUsername(userRecord[csvImportFieldPositions[0]]);          if(csvImportFieldPositions[1] != -1)            user.setAccountNumbers(userRecord[csvImportFieldPositions[1]]);          if(csvImportFieldPositions[2] != -1)            user.setAction(userRecord[csvImportFieldPositions[2]]);          if(csvImportFieldPositions[3] != -1)            user.setFirstName(userRecord[csvImportFieldPositions[3]]);          if(csvImportFieldPositions[4] != -1)            user.setLastName(userRecord[csvImportFieldPositions[4]]);          if(csvImportFieldPositions[5] != -1)            user.setEmailAddress(userRecord[csvImportFieldPositions[5]]);          if(csvImportFieldPositions[6] != -1)            user.setUserRole(userRecord[csvImportFieldPositions[6]]);          if(csvImportFieldPositions[7] != -1)            user.setAdminRights(userRecord[csvImportFieldPositions[7]]);          if(csvImportFieldPositions[8] != -1)            user.setReportingAccess(userRecord[csvImportFieldPositions[8]]);              if(csvImportFieldPositions[9] != -1)            user.setProfileManagementRole(userRecord[csvImportFieldPositions[9]]);          if(csvImportFieldPositions[10] != -1)            user.setGeneralAdmin(userRecord[csvImportFieldPositions[10]]);          if(csvImportFieldPositions[11] != -1)            user.setReportingAdmin(userRecord[csvImportFieldPositions[11]]);          if(csvImportFieldPositions[12] != -1)            user.setReceiptAdmin(userRecord[csvImportFieldPositions[12]]);             if(csvImportFieldPositions[13] != -1)            user.setMSRAdmin(userRecord[csvImportFieldPositions[13]]);          if(csvImportFieldPositions[14] != -1)            user.setVTImportAccess(userRecord[csvImportFieldPositions[14]]);          if(csvImportFieldPositions[15] != -1)            user.setPurchaseCardAdmin(userRecord[csvImportFieldPositions[15]]);          if(csvImportFieldPositions[16] != -1)            user.setManagedBillingAdmin(userRecord[csvImportFieldPositions[16]]);          if(csvImportFieldPositions[17] != -1)            user.setAutoEmailAdmin(userRecord[csvImportFieldPositions[17]]);          if(csvImportFieldPositions[18] != -1)            user.setAuthRecycleAdmin(userRecord[csvImportFieldPositions[18]]);          if(csvImportFieldPositions[19] != -1)            user.setPinlessDebitAdmin(userRecord[csvImportFieldPositions[19]]);          if(csvImportFieldPositions[20] != -1)            user.setAccountUpdaterAdmin(userRecord[csvImportFieldPositions[20]]);          if(csvImportFieldPositions[21] != -1)            user.setSoftDescriptorRole(userRecord[csvImportFieldPositions[21]]);          if(csvImportFieldPositions[22] != -1)            user.setFlexcacheAdmin(userRecord[csvImportFieldPositions[22]]);          if(csvImportFieldPositions[23] != -1)            user.setPhoneNumber(userRecord[csvImportFieldPositions[23]]);          if(csvImportFieldPositions[24] != -1)            user.setSafetechFraudAdmin(userRecord[csvImportFieldPositions[24]]);          if(csvImportFieldPositions[25] != -1)            user.setHostedPayPageAdmin(userRecord[csvImportFieldPositions[25]]);          if(csvImportFieldPositions[26] != -1)            user.setLimitedRefundAccess(userRecord[csvImportFieldPositions[26]]);      break;
      case 'iterminal':        //CREATE ITERMINAL USER          user = new IterminalUser();          user.setContactLevel(userLevel);
          if(csvImportFieldPositions[0] != -1)            user.setUsername(userRecord[csvImportFieldPositions[0]]);          if(csvImportFieldPositions[1] != -1)            user.setAccountNumbers(userRecord[csvImportFieldPositions[1]]);          if(csvImportFieldPositions[2] != -1)            user.setAction(userRecord[csvImportFieldPositions[2]]);          if(csvImportFieldPositions[3] != -1)            user.setFirstName(userRecord[csvImportFieldPositions[3]]);          if(csvImportFieldPositions[4] != -1)            user.setLastName(userRecord[csvImportFieldPositions[4]]);          if(csvImportFieldPositions[5] != -1)            user.setEmailAddress(userRecord[csvImportFieldPositions[5]]);          if(csvImportFieldPositions[6] != -1)            user.setUserRole(userRecord[csvImportFieldPositions[6]]);          if(csvImportFieldPositions[7] != -1)            user.setPhoneNumber(userRecord[csvImportFieldPositions[7]]);    if(csvImportFieldPositions[8] != -1)            user.setRefundAccess(userRecord[csvImportFieldPositions[8]]);    if(csvImportFieldPositions[9] != -1)            user.setVoidAccess(userRecord[csvImportFieldPositions[9]]);      break;
      default:        throw new Error("UserImportCtrl.importUser: The user's system is not recognized");      break;
    }//EOS 
    currentUser = user;
    if(debugMode){      if(!confirm("Would you like to continue processing the following user record?\n\n" + currentUser.toString()))          throw new Error("UserImportCtrl.importUser: The user cancelled the import of the user.");    }
    importWindow.showMessage("Import Status (click X to stop the import)", "Processing "  + currentUser.getAction() + " for " + currentUser.getFirstName() + " " + currentUser.getLastName() + "<br/><br/>"                             + "Record: " + ++currentRecord + " of " + userParser.getRecordCount());
    switch(currentUser.getAction()){      case IMPORTACTIONADDVALUE:        dataManager.insertUser(currentUser);      break;
      case IMPORTACTIONDELETEVALUE:      case IMPORTACTIONUPDATEVALUE:        dataManager.updateUser(currentUser);      break;
      case '':      case null:        currentUser.setMessage("No action specified");        userImportSuccess();      break;          }//EOS  }  catch(e){    throw new Error("UserImportCtrl.importUser: User import did not complete.\n" + (e.description || e));  }  }//EOF

  var importHeader = function(){  try{    var optionalImportFieldNames = '';    var requiredImportFieldNames = '';
    currentUser = "Header";
    if(!(csvImportFields = userParser.getRecord()))      throw new Error ("UserImportCtrl.importHeader: The import header records are required.");
    if(debugMode)      alert("Status: Reading header record");        importWindow.showMessage("Import Status (click X to stop the import)", "Processing Import Headers<br/><br/>"                             + "Record: " + ++currentRecord + " of " + userParser.getRecordCount());
    switch(userSystem){      case 'orbital':        for(var i=0; i<ORBITALCSVFORMFIELDS.length; ++i)          csvImportFieldPositions[i] = -1;
        for(var i=0; i<csvImportFields.length; ++i){          if(csvImportFieldPositions[0] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[0] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[0] = i;          else if(csvImportFieldPositions[1] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[1] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[1] = i;          else if(csvImportFieldPositions[2] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[2] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[2] = i;          else if(csvImportFieldPositions[3] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[3] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[3] = i;          else if(csvImportFieldPositions[4] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[4] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[4] = i;          else if(csvImportFieldPositions[5] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[5] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[5] = i;          else if(csvImportFieldPositions[6] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[6] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[6] = i;          else if(csvImportFieldPositions[7] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[7] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[7] = i;          else if(csvImportFieldPositions[8] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[8] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[8] = i;          else if(csvImportFieldPositions[9] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[9] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[9] = i;          else if(csvImportFieldPositions[10] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[10] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[10] = i;          else if(csvImportFieldPositions[11] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[11] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[11] = i;          else if(csvImportFieldPositions[12] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[12] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[12] = i;          else if(csvImportFieldPositions[13] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[13] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[13] = i;          else if(csvImportFieldPositions[14] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[14] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[14] = i;          else if(csvImportFieldPositions[15] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[15] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[15] = i;          else if(csvImportFieldPositions[16] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[16] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[16] = i;          else if(csvImportFieldPositions[17] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[17] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[17] = i;          else if(csvImportFieldPositions[18] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[18] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[18] = i;          else if(csvImportFieldPositions[19] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[19] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[19] = i;          else if(csvImportFieldPositions[20] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[20] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[20] = i;          else if(csvImportFieldPositions[21] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[21] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[21] = i;          else if(csvImportFieldPositions[22] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[22] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[22] = i;          else if(csvImportFieldPositions[23] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[23] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[23] = i;          else if(csvImportFieldPositions[24] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[24] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[24] = i;          else if(csvImportFieldPositions[25] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[25] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[25] = i;          else if(csvImportFieldPositions[26] == -1 && new RegExp(".*" + ORBITALCSVFORMFIELDS[26] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[26] = i;        }
        if(csvImportFieldPositions[0] == -1)          requiredImportFieldNames += ORBITALCSVFORMFIELDS[0] + "\n";        if(csvImportFieldPositions[1] == -1)          requiredImportFieldNames += ORBITALCSVFORMFIELDS[1] + "\n";        if(csvImportFieldPositions[2] == -1)          requiredImportFieldNames += ORBITALCSVFORMFIELDS[2] + "\n";        if(csvImportFieldPositions[3] == -1)          requiredImportFieldNames += ORBITALCSVFORMFIELDS[3] + "\n";        if(csvImportFieldPositions[4] == -1)          requiredImportFieldNames += ORBITALCSVFORMFIELDS[4] + "\n";        if(csvImportFieldPositions[5] == -1)          requiredImportFieldNames += ORBITALCSVFORMFIELDS[5] + "\n";
        if(requiredImportFieldNames.length)          throw new Error("UserImportCtrl.importHeader: The following fields are required.\n\n" + requiredImportFieldNames);
        for(var i=0; i<csvImportFieldPositions.length; ++i){              if(csvImportFieldPositions[i] == -1)            optionalImportFieldNames += ORBITALCSVFORMFIELDS[i] + "\n";        }
        if(optionalImportFieldNames.length){            if(!confirm("The following optional fields could not be found in the import data. Would you like to continue?\n\n" + optionalImportFieldNames))              throw new Error("UserImportCtrl.importHeader: The user cancelled because optional fields were missing in the import data");        }
      break;
      case 'iterminal':        for(var i=0; i<ITERMINALCSVFORMFIELDS.length; ++i)          csvImportFieldPositions[i] = -1;
        for(var i=0; i<csvImportFields.length; ++i){          if(csvImportFieldPositions[0] == -1 && new RegExp(".*" + ITERMINALCSVFORMFIELDS[0] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[0] = i;          else if(csvImportFieldPositions[1] == -1 && new RegExp(".*" + ITERMINALCSVFORMFIELDS[1] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[1] = i;          else if(csvImportFieldPositions[2] == -1 && new RegExp(".*" + ITERMINALCSVFORMFIELDS[2] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[2] = i;          else if(csvImportFieldPositions[3] == -1 && new RegExp(".*" + ITERMINALCSVFORMFIELDS[3] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[3] = i;          else if(csvImportFieldPositions[4] == -1 && new RegExp(".*" + ITERMINALCSVFORMFIELDS[4] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[4] = i;          else if(csvImportFieldPositions[5] == -1 && new RegExp(".*" + ITERMINALCSVFORMFIELDS[5] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[5] = i;          else if(csvImportFieldPositions[6] == -1 && new RegExp(".*" + ITERMINALCSVFORMFIELDS[6] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[6] = i;          else if(csvImportFieldPositions[7] == -1 && new RegExp(".*" + ITERMINALCSVFORMFIELDS[7] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[7] = i;    else if(csvImportFieldPositions[8] == -1 && new RegExp(".*" + ITERMINALCSVFORMFIELDS[8] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[8] = i;    else if(csvImportFieldPositions[9] == -1 && new RegExp(".*" + ITERMINALCSVFORMFIELDS[9] + ".*", 'i').test(csvImportFields[i]))            csvImportFieldPositions[9] = i;          }
        if(csvImportFieldPositions[0] == -1)          requiredImportFieldNames += ITERMINALCSVFORMFIELDS[0] + "\n";        if(csvImportFieldPositions[1] == -1)          requiredImportFieldNames += ITERMINALCSVFORMFIELDS[1] + "\n";        if(csvImportFieldPositions[2] == -1)          requiredImportFieldNames += ITERMINALCSVFORMFIELDS[2] + "\n";        if(csvImportFieldPositions[3] == -1)          requiredImportFieldNames += ITERMINALCSVFORMFIELDS[3] + "\n";        if(csvImportFieldPositions[4] == -1)          requiredImportFieldNames += ITERMINALCSVFORMFIELDS[4] + "\n";        if(csvImportFieldPositions[5] == -1)          requiredImportFieldNames += ITERMINALCSVFORMFIELDS[5] + "\n";
        if(requiredImportFieldNames.length)          throw new Error("UserImportCtrl.importHeader: The following fields are required.\n\n" + requiredImportFieldNames);
        for(var i=0; i<csvImportFieldPositions.length; ++i){              if(csvImportFieldPositions[i] == -1)            optionalImportFieldNames += ITERMINALCSVFORMFIELDS[i] + "\n";        }
        if(optionalImportFieldNames.length){            if(!confirm("The following optional fields could not be found in the import data. Would you like to continue?\n\n" + optionalImportFieldNames))              throw new Error("UserImportCtrl.importHeader: The user cancelled because optional fields were missing in the import data");        }
      break;
      default:        throw new Error("UserImportCtrl.importHeader: The user's system is not recognized");      break;
    }//EOS  }  catch(e){    throw new Error("UserImportCtrl.importHeader: Header import did not complete.\n" + (e.description || e));  }  }//EOF  
  this.reloadUI = function(){    if(importWindow)      importWindow.show();  }
    importWindow = new ImportInterface();    importWindow.addListener(function (event){      switch(event.getMessage()){        case 'closewindow':          event.getTarget().hide();          importHalt = true;        break;
        case 'importSettings.click':          importWindow.toggleImportSettings();        break;
        case 'importReport.click':          importWindow.toggleImportReport();        break;
        case 'processButton.click':          myself.startImport();        break;
        case 'usernameClipboard.click':          try{            var userList = '';
            if(!processedUsers.length)              alert("No users available");
            for(var i=0; i<processedUsers.length; ++i){              if(processedUsers[i] && processedUsers[i].getUsername && processedUsers[i].getUsername())                userList += processedUsers[i].getUsername();
              userList += "\n";                        }
            clipboardData.setData("Text", userList);          }          catch(e){            alert("UserImportCtrl.listener: Usernames could not be copied to clipboard.\n\nReason:\n" + (e.description || e));          }
        break;
        case 'reportClipboard.click':        break;
        default:           alert("Unknown event occurred: " + event);        break;      }    });
    importWindow.setImportReport("No report data available");        importWindow.show();
}//EOF
function OrbitalDM(){  var orbitalUser;
  var userAccounts;  var missingAccounts;  var currentAccount;  var userEditUrl;  var accountRemovalCounter;  var waitTime;  var currentState;  var listener;  var debugMode = false;  var timeout = 5000;  var accountReplacePromptEnabled = true;  var nameSecurityPromptEnabled = true;  var accountSecurityPromptEnabled = true;
  var defaultNameSecurityAction = '';  var defaultAccountSecurityAction = '';  var defaultAccountRemovalAction = '';  var defaultAccountAction = '';
  var myself = this;  var orbitalWindow = window.open();
  var waitForForm = function(callback){    try{      self.status = "Waiting for response: " + waitTime;
      if(!orbitalWindow.document || orbitalWindow.document.readyState.toLowerCase() != "complete"){        if(waitTime >= timeout){          if(!confirm("The timeout limit has been reached. Would you like to continue waiting?"))            throw new Error("OrbitalDM.waitForForm: The user cancelled because timeout limit has been reached.");                    waitTime = 0;        }          waitTime += USERIMPORTPOLLINGTIME;        setTimeout(function(){waitForForm(callback)}, USERIMPORTPOLLINGTIME);      }          else{        waitTime = 0;        callback();      }          }    catch(e){      self.status = "Waiting for response exception: " + (e.description || e);
      if(waitTime >= timeout){        var event = new FumDum.Event();        event.setType("OrbitalDM.failure");        event.setMessage(e.description || e);        if(listener)          listener(event);        return;      }
      waitTime += USERIMPORTPOLLINGTIME;      setTimeout(function(){waitForForm(callback)}, USERIMPORTPOLLINGTIME);    }    }//EOF
  this.insertUser = function(user){    try{
      userAccounts = new Array();      missingAccounts = new Array();      currentAccount = '';      userEditUrl = '';      waitTime = 0;      currentState = 'getSearchForm';
      if(debugMode)        alert("Status: Orbital insert initializing");        //VERIFY USER IS AN INSTANCE OF ORBITALUSER      if(!(user instanceof OrbitalUser))        throw new Error("OrbitalDM.inserUser: User must be an OrbitalUser");        if(user.getFirstName() == null)        throw new Error("OrbitalDM.inserUser: The user's first name is required");        if(user.getLastName() == null)        throw new Error("OrbitalDM.inserUser: The user's last name is required");         if(user.getEmailAddress() == null)        throw new Error("OrbitalDM.inserUser: The user's email address is required");         if(user.getContactLevel() == null)        throw new Error("OrbitalDM.inserUser: The user's contact level is required");        if(user.getBin() == null)        throw new Error("OrbitalDM.inserUser: The user's bin is required");           if(!user.getAccountNumbers().length){        if(!confirm("The user does not have any account numbers to be linked. Would you like to continue?"))          throw new Error("OrbitalDM.inserUser: The user cancelled add request because no account numbers were provided");      }        orbitalUser = user;      userAccounts = orbitalUser.getAccountNumbers();
      try{        orbitalWindow.document;      }      catch(e){        orbitalWindow = window.open();      }        waitForForm(manageInsert);
    }    catch(e){      throw new Error("OrbitalDM.insertUser: The user insert process did not complete.\n" + (e.description || e));    }  }
  var manageInsert = function(){    try{      switch(currentState){        case 'getSearchForm':          if(debugMode)            alert("Status: Requesting search form");          self.status = "Requesting user search form";
          getForm(ORBITALFORMURL);          currentState ="getAddForm";          waitForForm(manageInsert);          self.status = "Waiting for user search form";        break;
        case 'getAddForm':          if(debugMode)            alert("Status: Requesting user add form.");          self.status = "Requesting user add form";
          submitForm(ORBITALUSERSEARCHFORMADDUSERBUTTONVALUE);          currentState ="submitAddForm";          waitForForm(manageInsert);          self.status = "Waiting for user add form";       
        break;
        case 'submitAddForm':          if(debugMode)            alert("Status: Populating user add form");          self.status = "Populating user add form";
          populateUserForm(orbitalUser);
          if(debugMode){            if(!confirm("Orbital add form has been populated. Would you like to send the add request?"))              throw new Error("OrbitalDM.manageInsert: The user cancelled out of adding the user");          }
          //SUBMIT USER ADD FORM          self.status = "Submit user add form";                    submitForm(ORBITALUSERFORMSAVEUSERBUTTONVALUE);          currentState ="confirmUserAdd";          waitForForm(manageInsert);          self.status = "Waiting for user add response";               break;
        case 'confirmUserAdd':          if(debugMode)            alert("Status: Confirming user add.");          self.status = "Confirming user add";
          var username = getUsernameCreated();          orbitalUser.setUsername(username);
          if(!username && !orbitalUser.isContactOnly())            orbitalUser.setMessage('OrbitalDM.manageInsert: Username could not be determined');
          currentState ="submitAccountAdd";          waitForForm(manageInsert);        break;
        case 'submitAccountAdd':          if(!userAccounts.length){            var event = new FumDum.Event();            event.setType("OrbitalDM.success");            if(listener)              listener(event);
            return;          }
          if(debugMode)            alert("Status: Populating account add form");          self.status = "Populating account add form";
          currentAccount = userAccounts.pop();          populateUserEditFormAccountNumber(currentAccount);
          if(debugMode){            if(!confirm("Account has been populated. Would you like to send account link request?"))              throw new Error("OrbitalDM.manageInsert: The user cancelled out of account link request");          }
          //SUBMITTING ACCOUNT LINK REQUEST          self.status = "Submitting account link request";          submitForm(ORBITALUSERFORMADDACCOUNTBUTTONVALUE);          currentState ="confirmAccountAdd";          waitForForm(manageInsert);          self.status = "Waiting for account add response";               break;
        case 'confirmAccountAdd':          if(debugMode)            alert("Status: Confirming account add");          self.status = "Confirming account add";
          if(!confirmUpdate()){            orbitalUser.setMessage("Account " + currentAccount + " may not have been linked!");            if(!confirm("The account " + currentAccount + " may not have been linked to " + orbitalUser.getFirstName() + " " + orbitalUser.getLastName() + ". Would you like to continue with remaining accounts?"))              throw new Error("OrbitalDM.manageInsert: The user cancelled out of linking accounts to the user");          }
          currentState ="submitAccountAdd";          manageInsert();             break;
        default:          throw new Error("OrbitalDM.manageInsert: insert state is invalid and user status is unknown");        break;
      }//EOS
    }    catch(e){      orbitalWindow = null;      var event = new FumDum.Event();      event.setType("OrbitalDM.failure");      event.setMessage("OrbitalDM.manageInsert: The insert process did not complete (Current State: " + currentState + ").\n" + (e.description || e));      if(listener)        listener(event); 
      return;    }
  }//EOF
  this.updateUser = function(user){    try{      userAccounts = new Array();      missingAccounts = new Array();      currentAccount = '';      userEditUrl = '';      accountRemovalCounter = 0;      waitTime = 0;      currentState = 'getSearchForm';
      if(debugMode)        alert("Status: Orbital update initializing");        //VERIFY USER IS AN INSTANCE OF ORBITAL USER      if(!(user instanceof OrbitalUser))        throw new Error("OrbitalDM.updateUser: User must be an OrbitalUser");        if(user.getUsername() == null)        throw new Error("OrbitalDM.updateUser: The VT username is required to update a user");         if(!user.getAccountNumbers().length){        if(!confirm("The user does not have any account numbers to be linked. Would you like to continue?"))          throw new Error("OrbitalDM.updateUser: The user cancelled add request because no account numbers were provided");      }        orbitalUser = user;      userAccounts = orbitalUser.getAccountNumbers();        try{        orbitalWindow.document;      }      catch(e){        orbitalWindow = window.open();      }          waitForForm(manageUpdate);
    }    catch(e){      throw new Error("OrbitalDM.updateUser: The user update process did not complete.\n" + (e.description || e));    }  }

  var manageUpdate = function(){    try{      switch(currentState){
        case 'getSearchForm':          if(debugMode)            alert("Status: Requesting search form");          self.status = "Requesting user search form";
          getForm(ORBITALFORMURL);          currentState ="clearUserSearch";          waitForForm(manageUpdate);          self.status = "Waiting for user search form";        break;
         case 'clearUserSearch':          if(debugMode)            alert("Status: Clearing search form");          self.status = "Clearing user search form";                    clearForm();          currentState = "submitUserSearch";          waitForForm(manageUpdate);        break;
        case 'submitUserSearch':
          //POPULATE USER SEARCH FORM          self.status = "Populating user search form";          populateUserSearchFormUsername(orbitalUser.getUsername());          self.status = "Submitting user search request";
          if(debugMode){            if(!confirm("Orbital search form has been populated. Would you like to send the search request?"))              throw new Error("OrbitalDM.manageUpdate: The user cancelled out of searching for the user");          }
          //SUBMIT USER SEARCH FORM          self.status = "Submit user search form";                    submitForm(ORBITALUSERSEARCHFORMSEARCHBUTTONVALUE);          currentState ="confirmUserFound";          waitForForm(manageUpdate);          self.status = "Waiting for user search response";        
        break;
        case 'confirmUserFound':          if(debugMode)            alert("Status: Confirming user exists");          self.status = "Confirming user exists";  
          userEditUrl = confirmUsernameFound(orbitalUser.getUsername());          if(!userEditUrl)            throw new Error("OrbitalDM.manageUpdate: The username was not found in search results");
          currentState ="submitAccountSearch";          manageUpdate();        break;
        case 'submitAccountSearch':          if(!userAccounts.length){            currentState ="getUserEdit";            manageUpdate();            return;          }
          if(debugMode)            alert("Status: Populating account search form");          self.status = "Populating account search form";
          //POPULATE ACCOUNT ADD FORM          currentAccount = userAccounts.pop();          populateUserSearchFormUsername(orbitalUser.getUsername());          populateUserSearchFormAccountNumber(orbitalUser.getContactLevel(), currentAccount);
          if(debugMode){            if(!confirm("Orbital search form has been populated. Would you like to send the search request?"))              throw new Error("OrbitalDM.manageUpdate: The user cancelled out of searching for user's account");          }
          //SUBMIT USER SEARCH FORM          self.status = "Submit account search form";                    submitForm(ORBITALUSERSEARCHFORMSEARCHBUTTONVALUE);          currentState ="confirmAccountLinked";          waitForForm(manageUpdate);          self.status = "Waiting for user search response";               break;
        case 'confirmAccountLinked':          if(debugMode)            alert("Status: Confirming account linked to user");          self.status = "Confirming account linked to user";
                    if(!confirmUsernameFound(orbitalUser.getUsername()))            missingAccounts.push(currentAccount);
          currentState ="submitAccountSearch";          manageUpdate();             break;

        case 'getUserEdit':          if(debugMode)            alert("Status: Requesting user edit form");          self.status = "Requesting user edit form";
          getForm(userEditUrl);
          currentState ="submitEditForm";          waitForForm(manageUpdate);          self.status = "Waiting for user edit form";          break;
        case 'submitEditForm':          if(debugMode)            alert("Status: Populating user edit form");          self.status = "Populating user edit form";
          //Security Validations          var firstName = getFormFieldValue(ORBITALUSERADDFORMFIRSTNAMEFIELDNAME);   var lastName = getFormFieldValue(ORBITALUSERADDFORMLASTNAMEFIELDNAME);   //var contactLevel = getFormFieldValue(ORBITALUSERADDFORMCONTACTLEVELFIELDNAME);
          if(orbitalUser.getFirstName().toLowerCase() != firstName.toLowerCase() && orbitalUser.getLastName().toLowerCase() != lastName.toLowerCase()){            var editNameAction = '';            while(!editNameAction){              if(nameSecurityPromptEnabled){                editNameAction = prompt("The first and last name provided does not match the user's account. Would you like to Continue?"                                       +" Enter \"Continue\" or click Cancel", defaultNameSecurityAction);              }              else                editNameAction = 'Continue';
              switch(editNameAction){                case 'Continue':                case 'continue':                  defaultNameSecurityAction = 'Continue';                break;
                case null:                  throw new Error("OrbitalDM.manageUpdate: The user cancelled out of editting the user due to the name not matching the user's account");                                  break;
                default:                  alert("Invalid option entered: " + editNameAction);                  editNameAction = '';                break;                }//EOS            }//EOW
          }
/*          //Security Validations          if(orbitalUser.getContactLevel().toLowerCase() != contactLevel.toLowerCase()){            var editNameAction = '';            while(!editNameAction){                editNameAction = prompt("The contact level set does not match the user's account. Changing it would remove all the user's current accounts. Would you like to Continue? Enter \"Continue\" or click Cancel", "Enter \"Continue\" to edit the user's account");
              switch(editNameAction){                case 'Continue':                case 'continue':                break;
                case null:                  throw new Error("OrbitalDM.manageUpdate: The user cancelled out of editting the user due to the contact level not matching the user's account");                                  break;
                default:                  alert("Invalid option entered: " + editNameAction);                  editNameAction = '';                break;                }//EOS            }//EOW
          }*/
          //Security Validations          if(orbitalUser.getAccountNumbers().length == missingAccounts.length){            var editAccountAction = '';            while(!editAccountAction){              if(accountSecurityPromptEnabled){                editAccountAction = prompt("None of the accounts provided are linked to the user. Would you like to Continue?"                                          +" Enter \"Continue\" or click Cancel", defaultAccountSecurityAction);              }              else                editAccountAction = 'Continue';
              switch(editAccountAction){                case 'Continue':                case 'continue':                  defaultAccountSecurityAction = 'Continue';                break;
                case null:                  throw new Error("OrbitalDM.manageUpdate: The user cancelled out of editting the user due to none of the accounts provided being linked to the user");                break;
                default:                  alert("Invalid option entered: " + editAccountAction);                  editAccountAction = '';                break;                }//EOS            }//EOW          }
          populateUserForm(orbitalUser);
          if(debugMode){            if(!confirm("Orbital edit form has been populated. Would you like to send the edit request?"))              throw new Error("OrbitalDM.manageUpdate: The user cancelled out of editting the user");          }
          //SUBMIT USER EDIT FORM          self.status = "Submit user edit form";                    submitForm(ORBITALUSERFORMSAVEUSERBUTTONVALUE);
          currentState = "confirmUserEdit";          waitForForm(manageUpdate);          self.status = "Waiting for user edit response";               break;
        case 'confirmUserEdit':          if(debugMode)            alert("Status: Confirming user edit.");          self.status = "Confirming user edit";
          if(!confirmUpdate()){            orbitalUser.setMessage("The user may not have been updated");            throw new Error("OrbitalDM.manageUpdate: The user may not have been updated");          }
          //USER DELETES DO NOT NEED TO MODIFY ACCOUNT NUMBERS          if(orbitalUser.getAction() == IMPORTACTIONDELETEVALUE){            var event = new FumDum.Event();            event.setType("OrbitalDM.success");            if(listener)              listener(event);
            return;          }                    currentState = "getAccountEdit";          manageUpdate();        break;
        case 'getAccountEdit':          userAccounts = orbitalUser.getAccountNumbers();
          if(!userAccounts.length){            var event = new FumDum.Event();            event.setType("OrbitalDM.success");            if(listener)              listener(event);
            return;          }
          self.status = "Missing accounts: " + missingAccounts;
          var accountAction = '';          while(!accountAction){
            if(accountReplacePromptEnabled){              if(!missingAccounts.length)                defaultAccountRemovalAction = accountAction = prompt("User already linked to accounts provided. Would you like to Remove any additional accounts the user has?"                                                                    +" Enter \"Remove\" or click Cancel", defaultAccountRemovalAction);              else                defaultAccountAction = accountAction = prompt("Would you like to Append the missing accounts or Replace all accounts the user may have?"                                                             +" Enter \"Append\" or \"Replace\"", defaultAccountAction);            }            else              accountAction = "append";
            switch(accountAction){              case 'Append':              case 'append':                userAccounts = missingAccounts;                                currentState = "submitAccountAdd";              break;
              case 'Remove':              case 'remove':              case 'Replace':              case 'replace':                currentState = "submitAccountRemoval";              break;
              case null:                var event = new FumDum.Event();                event.setType("OrbitalDM.success");                if(listener)                  listener(event);                return;              break;
              default:                alert("Invalid option entered: " + accountAction);                accountAction = '';              break;
            }//EOS
          }//EOW
          manageUpdate();        break;
        case 'submitAccountAdd':          if(!userAccounts.length){            var event = new FumDum.Event();            event.setType("OrbitalDM.success");            if(listener)              listener(event);
            return;          }
          if(debugMode)            alert("Status: Populating account add form");          self.status = "Populating account add form";
          currentAccount = userAccounts.pop();          populateUserEditFormAccountNumber(currentAccount);
          if(debugMode){            if(!confirm("Account has been populated. Would you like to send account link request?"))              throw new Error("OrbitalDM.manageUpdate: The user cancelled out of account link request");          }
          //SUBMITTING ACCOUNT LINK REQUEST          self.status = "Submitting account link request";          submitForm(ORBITALUSERFORMADDACCOUNTBUTTONVALUE);          currentState ="confirmAccountAdd";          waitForForm(manageUpdate);           self.status = "Waiting for account add response";               break;
        case 'confirmAccountAdd':          if(debugMode)            alert("Status: Confirming account add");          self.status = "Confirming account add";
          if(!confirmUpdate()){            orbitalUser.setMessage("Account " + currentAccount + " may not have been linked!");            if(!confirm("The account " + currentAccount + " may not have been linked to " + orbitalUser.getFirstName() + " " + orbitalUser.getLastName() + ". Would you like to continue with remaining accounts?"))              throw new Error("OrbitalDM.manageUpdate: The user cancelled out of linking accounts to the user");          }
          currentState ="submitAccountAdd";          manageUpdate();             break;
        case 'submitAccountRemoval':          if(debugMode)            alert("Status: Removing user's accounts");          self.status = "Removing user's accounts";           if(!selectUsersAccounts()){            if(!accountRemovalCounter)              throw new Error("OrbitalDM.manageUpdate: Accounts could not be removed.");            else{              currentState = "submitAccountAdd";              manageUpdate();              return;            }          }
          ++accountRemovalCounter;
          if(debugMode){            if(!confirm("The accounts have been selected. Would you like to remove the accounts?"))              throw new Error("OrbitalDM.manageUpdate: The user cancelled out of account removal request");          }
          //SUBMITTING ACCOUNT LINK REQUEST          self.status = "Submitting account removal request";          submitForm(ORBITALUSERFORMDELETEACCOUNTBUTTONVALUE);
          currentState ="confirmAccountRemoval";          waitForForm(manageUpdate);          self.status = "Waiting for account removal response";       
        break;
        case 'confirmAccountRemoval':          if(debugMode)            alert("Status: Confirming account removal");          self.status = "Confirming account removal";
          if(!confirmUpdate()){            orbitalUser.setMessage("Accounts may not have been updated");            throw new Error("OrbitalDM.manageUpdate: Accounts may not have been updated");          }
          currentState ="submitAccountRemoval";          manageUpdate();              break;
        default:          throw new Error("OrbitalDM.manageUpdate: update state is invalid and user status is unknown");        break;
      }//EOS
    }    catch(e){      orbitalWindow = null;      var event = new FumDum.Event();      event.setType("OrbitalDM.failure");      event.setMessage("OrbitalDM.manageUpdate: The update process did not complete (Current State: " + currentState + ").\n" + (e.description || e));      if(listener)        listener(event); 
      return;    }  }//EOF
  this.setTimeout = function(time){    time = parseInt(time);
    if(isNaN(time))      throw new Error("OrbitalDM.setTimeout: The timeout must be an integer");
    timeout = time;  }//EOF
  this.setAccountReplacePrompt = function(value){    if(typeof value != 'boolean')      throw new Error("OrbitalDM.setAccountReplacePrompt: value must be a boolean value");     accountReplacePromptEnabled = value;  }//EOF
  this.setNameSecurityPrompt = function(value){    if(typeof value != 'boolean')      throw new Error("OrbitalDM.setNameSecurityPrompt: value must be a boolean value");
    nameSecurityPromptEnabled = value;  }//EOF
  this.setAccountSecurityPrompt = function(value){    if(typeof value != 'boolean')      throw new Error("OrbitalDM.setAccountSecurityPrompt: value must be a boolean value");
    accountSecurityPromptEnabled = value;  }//EOF
  this.addListener = function(method){    if(typeof method != "function")      throw new Error("OrbitalDM.addListener: Listener must be a method");
    listener = method;  }//EOF
  this.setDebugMode = function(mode){    if(typeof mode != "boolean")      throw new Error("OrbitalDM.setDebugMode: Debug mode must be a boolean value");
    debugMode = mode;
  }//EOF
  var getForm = function(url){    orbitalWindow.location.assign(url);  }//EOF
  var clearForm = function(url){    if(e = orbitalWindow.document.getElementsByName(ORBITALUSERSEARCHFORMCLEARSEARCHBUTTONVALUE)[0])      e.click();  }//EOF
  var submitForm = function(buttonName){    self.status = "Submitting user add request";    var submitted = false;    inputs = orbitalWindow.document.getElementsByTagName("input");    for(var i=0; i<inputs.length; ++i){      if(inputs[i].type.toLowerCase() == "button" && inputs[i].value.toLowerCase() == buttonName.toLowerCase()){        submitted = true;        inputs[i].click();        break;      }    }
    if(!submitted)      throw new Error("OrbitalDM.submitForm: The Orbital form could not be submitted");  }//EOF
  var getUsernameCreated = function(){    var username = '';
    if(orbitalWindow.document.body.innerHTML.match(ORBITALFORMUPDATECONFIRMATIONREGEXP)){      if((matches = orbitalWindow.document.body.innerHTML.match(ORBITALUSERFORMADDUSERREGEXP)) && matches[1])        username = matches[1];    }    else      throw new Error("OrbitalDM.getUsernameCreated: The user add appears to have failed so please review the open window for additional information.");
    return username;
  } //EOF         
  var confirmUsernameFound = function(username){    var userReg = new RegExp("\>\s*" + username + "\s*\<", 'i');    var inputs = orbitalWindow.document.getElementsByTagName("a");
    for(var i=0; i<inputs.length; ++i){      if(inputs[i].innerHTML.match(userReg))        return inputs[i].href;    }
    return '';
  } //EOF  
  var selectUsersAccounts = function(){    var accountsFound = false;
    if((e = orbitalWindow.document.getElementsByName(ORBITALUSEREDITFORMACCOUNTCHECKBOXFIELDNAME)) && e.length){      accountsFound = true;      for(var i=0; i<e.length; ++i){        if(!e[i].checked)          e[i].click();      }    }     return accountsFound;  }//EOF
  var confirmUpdate = function(){    return orbitalWindow.document.body.innerHTML.match(ORBITALFORMUPDATECONFIRMATIONREGEXP);  }//EOF
  // FORM FEILD GETTERS AND SETTERS    var setFormFieldValue = function(elementName, value){    if(e = orbitalWindow.document.getElementsByName(elementName)[0]){
      switch(e.type){        case 'checkbox':          if(value && !e.checked)            e.click();          else if (!value && e.checked)            e.click();        break;
        case 'text':        case 'select-one':        case 'select-multiple':          e.value = value;        break;
        default:          throw new Error("OrbitalDM.setFormFieldValue: " + elementName + " field type not recognized.");        break;      }    }    else      throw new Error("OrbitalDM.setFormFieldValue: " + elementName + " field was not found in the form.");    }
  var getFormFieldValue = function(elementName){    if(e = orbitalWindow.document.getElementsByName(elementName)[0]){      switch(e.type){        case 'checkbox':          return e.checked;        break;
        case 'text':          return e.value;        break;
        case 'select-one':        case 'select-multiple':          return e.options[e.selectedIndex].text;        break;
        default:          throw new Error("OrbitalDM.getFormFieldValue: " + elementName + " field type not recognized.");        break;      }    }    else      throw new Error("OrbitalDM.getFormFieldValue: " + elementName + " field was not found in the form.");    }
  var populateUserSearchFormUsername = function(username){    try{      setFormFieldValue(ORBITALUSERSEARCHFORMUSERNAMEFIELDNAME, username);    }    catch(e){      throw new Error("OrbitalDM.populateUserSearchFormUsername: Username field on Search form could not be populated.\n" + (e.description || e));    }  }
  var populateUserSearchFormAccountNumber = function(contactLevel, accountNumber){    try{      if(contactLevel == ORBITALUSERFORMMERCHANTCONTACTLEVELVALUE)        setFormFieldValue(ORBITALUSERSEARCHFORMMERCHANTIDFIELDNAME, accountNumber);      else if(contactLevel == ORBITALUSERFORMCHAINCONTACTLEVELVALUE)        setFormFieldValue(ORBITALUSERSEARCHFORMCHAINIDFIELDNAME, accountNumber);      else        throw new Error("OrbitalDM.setSearchFormAccount: The contact level is invalid");    }    catch(e){      throw new Error("OrbitalDM.populateUserSearchFormUsername: Account number field on Search form could not be populated.\n" + (e.description || e));    }  }
  var populateUserEditFormAccountNumber = function(accountNumber){    try{      setFormFieldValue(ORBITALUSEREDITFORMACCOUNTNUMBERFIELDNAME, accountNumber);    }    catch(e){      throw new Error("OrbitalDM.populateUserEditFormAccountNumber: Account number field on user edit form could not be populated.\n" + (e.description || e));    }      }
  var populateUserForm = function(user){    var setOptionalFormFieldValue = function(elementName, value){      try{        setFormFieldValue(elementName, value);      }      catch(e){        user.setMessage(e.description || e);      }    }    var getOptionalFormFieldValue = function(elementName){      try{        var value = '';        value = getFormFieldValue(elementName);      }      catch(e){
      }
      return value;    }
    //REQUIRED FIELDS    try{
      //HANDLES ACTION SPECIFIC FIELDS      switch(user.getAction()){        case IMPORTACTIONDELETEVALUE:          if(user.getStatus() != null)            setFormFieldValue(ORBITALUSERADDFORMSTATUSFIELDNAME, user.getStatus());
          if(user.getAdminRights() != null){            setOptionalFormFieldValue(ORBITALUSERADDFORMADMINRIGHTSFIELDNAME, user.getAdminRights());            var adminRightsText = getOptionalFormFieldValue(ORBITALUSERADDFORMADMINRIGHTSFIELDNAME);            if(user.getAdminRightsText().toLowerCase() != adminRightsText.toLowerCase())              user.setMessage("Admin Rights may not have been set properly");            user.setAdminRightsText(adminRightsText);          }                    return;        break;
        case IMPORTACTIONUPDATEVALUE:          if(user.getFirstName() != null)            setFormFieldValue(ORBITALUSERADDFORMFIRSTNAMEFIELDNAME, user.getFirstName());          if(user.getLastName() != null)            setFormFieldValue(ORBITALUSERADDFORMLASTNAMEFIELDNAME, user.getLastName());          if(user.getEmailAddress() != null)            setFormFieldValue(ORBITALUSERADDFORMEMAILFIELDNAME, user.getEmailAddress());
          if(user.getAdminRights() != null){            setOptionalFormFieldValue(ORBITALUSERADDFORMADMINRIGHTSFIELDNAME, user.getAdminRights());            var adminRightsText = getOptionalFormFieldValue(ORBITALUSERADDFORMADMINRIGHTSFIELDNAME);            if(user.getAdminRightsText().toLowerCase() != adminRightsText.toLowerCase())              user.setMessage("Admin Rights may not have been set properly");            user.setAdminRightsText(adminRightsText);          }
        break;
        case IMPORTACTIONADDVALUE:          //REQUIRED FIELDS          if(user.getFirstName() != null)            setFormFieldValue(ORBITALUSERADDFORMFIRSTNAMEFIELDNAME, user.getFirstName());          if(user.getLastName() != null)            setFormFieldValue(ORBITALUSERADDFORMLASTNAMEFIELDNAME, user.getLastName());          if(user.getEmailAddress() != null)            setFormFieldValue(ORBITALUSERADDFORMEMAILFIELDNAME, user.getEmailAddress());
          if(user.getAdminRights() != null){            setOptionalFormFieldValue(ORBITALUSERADDFORMADMINRIGHTSFIELDNAME, user.getAdminRights());            var adminRightsText = getOptionalFormFieldValue(ORBITALUSERADDFORMADMINRIGHTSFIELDNAME);            if(user.getAdminRightsText().toLowerCase() != adminRightsText.toLowerCase())              user.setMessage("Admin Rights may not have been set properly");            user.setAdminRightsText(adminRightsText);          }
          if(user.getBin() != null){            setFormFieldValue(ORBITALUSERADDFORMBINFIELDNAME, user.getBin());            var binText = getOptionalFormFieldValue(ORBITALUSERADDFORMBINFIELDNAME);            if(user.getBinText().toLowerCase() != binText.toLowerCase())              user.setMessage("Processing System/BIN may not have been set properly");            user.setBinText(binText);          }
          if(user.getContactLevel() != null){            setFormFieldValue(ORBITALUSERADDFORMCONTACTLEVELFIELDNAME, user.getContactLevel());            var contactLevelText = getOptionalFormFieldValue(ORBITALUSERADDFORMCONTACTLEVELFIELDNAME);            if(user.getContactLevelText().toLowerCase() != contactLevelText.toLowerCase())              user.setMessage("Contact level may not have been set properly");            user.setContactLevelText(contactLevelText);          }
          //HANDLES CONTACT ONLY REQUESTS          if(user.isContactOnly()){            user.setMessage("Contact only user");            return;          }
          if(user.getUsername() != null)            setFormFieldValue(ORBITALUSERADDFORMUSERNAMEFIELDNAME, user.getUsername());          else if(user.getSuggestedUsername() != null)            setFormFieldValue(ORBITALUSERADDFORMUSERNAMEFIELDNAME, user.getSuggestedUsername());
        break;
        default:          throw new Error("OrbitalDM.populateUserForm: Unexpected user action.\n" + (e.description || e));        break;      }//EOS

          //OPTIONAL FIELDS          if(user.getPhoneNumber() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMPHONENUMBERFIELDNAME, user.getPhoneNumber());          if(user.getStatus() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMSTATUSFIELDNAME, user.getStatus());          if(user.getMaskAccountNumber() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMMASKACCOUNTNUMBERFIELDNAME, user.getMaskAccountNumber());          if(user.getLimitedRefundAccess() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMLIMITEDREFUNDACCESSFIELDNAME, user.getLimitedRefundAccess());
          if(user.getUserRole() != null){            setOptionalFormFieldValue(ORBITALUSERADDFORMUSERROLEFIELDNAME, user.getUserRole());            var userRoleText = getOptionalFormFieldValue(ORBITALUSERADDFORMUSERROLEFIELDNAME);             if(user.getUserRoleText().toLowerCase() != userRoleText.toLowerCase())              user.setMessage("User Role may not have been set properly");            user.setUserRoleText(userRoleText);          }          if(user.getSoftDescriptorRole() != null){            setOptionalFormFieldValue(ORBITALUSERADDFORMSOFTDESCRIPTORROLEFIELDNAME, user.getSoftDescriptorRole());            var softDescriptorRoleText = getOptionalFormFieldValue(ORBITALUSERADDFORMSOFTDESCRIPTORROLEFIELDNAME);            if(user.getSoftDescriptorRoleText().toLowerCase() != softDescriptorRoleText.toLowerCase())              user.setMessage("Soft Descriptor Role may not have been set properly");            user.setSoftDescriptorRoleText(softDescriptorRoleText);          }          if(user.getProfileManagementRole() != null){            setOptionalFormFieldValue(ORBITALUSERADDFORMPROFILEMANAGEMENTROLEFIELDNAME, user.getProfileManagementRole());            var profileManagementRoleText = getOptionalFormFieldValue(ORBITALUSERADDFORMPROFILEMANAGEMENTROLEFIELDNAME);            if(user.getProfileManagementRoleText().toLowerCase() != profileManagementRoleText.toLowerCase())              user.setMessage("Profile Management Role may not have been set properly");             user.setProfileManagementRoleText(profileManagementRoleText);          }          if(user.getMSRAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMMSRADMINFIELDNAME, user.getMSRAdmin());          if(user.getReportingAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMREPORTINGADMINFIELDNAME, user.getReportingAdmin());          if(user.getReportingAccess() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMREPORTINGACCESSFIELDNAME, user.getReportingAccess());          if(user.getGeneralAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMGENERALADMINFIELDNAME, user.getGeneralAdmin());          if(user.getFlexcacheAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMFLEXCACHEADMINFIELDNAME, user.getFlexcacheAdmin());          if(user.getVTImportAccess() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMVTIMPORTACCESSFIELDNAME, user.getVTImportAccess());          if(user.getPurchaseCardAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMPURCHASECARDADMINFIELDNAME, user.getPurchaseCardAdmin());          if(user.getReceiptAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMRECEIPTADMINFIELDNAME, user.getReceiptAdmin());          if(user.getManagedBillingAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMMANAGEDBILLINGADMINFIELDNAME, user.getManagedBillingAdmin());          if(user.getAuthRecycleAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMAUTHRECYCLEADMINFIELDNAME, user.getAuthRecycleAdmin());          if(user.getAutoEmailAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMAUTOEMAILADMINFIELDNAME, user.getAutoEmailAdmin());          if(user.getPinlessDebitAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMPINLESSDEBITADMINFIELDNAME, user.getPinlessDebitAdmin());          if(user.getAccountUpdaterAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMACCOUNTUPDATERADMINFIELDNAME, user.getAccountUpdaterAdmin());
          if(user.getSafetechFraudAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMSAFETECHFRAUDADMINFIELDNAME, user.getSafetechFraudAdmin());          if(user.getHostedPayPageAdmin() != null)            setOptionalFormFieldValue(ORBITALUSERADDFORMHOSTEDPAYPAGEADMINFIELDNAME, user.getHostedPayPageAdmin());
    }    catch(e){      throw new Error("OrbitalDM.populateUserForm: User form fields could not be populated.\n" + (e.description || e));    }
  }//EOF
  this.close = function(){    if(orbitalWindow){      orbitalWindow.close();      orbitalWindow = '';    }  }//EOF
}//EOC

function OrbitalUser(){  var message = '';  var firstName = null;  var lastName = null;  var emailAddress = null;  var phoneNumber = null;  var bin = null;  var binText = '';  var contactLevel = null;  var contactLevelText = '';  var adminRights = null;  var adminRightsText = '';  var accountNumbers = new Array();  var action = null;  var username = null;  var suggestedUsername = null;  var status = null;  var userRole = null;  var userRoleText = '';  var maskAccountNumber = null;  var softDescriptorRole = null;     var softDescriptorRoleText = '';   var profileManagementRole = null;  var profileManagementRoleText = '';  var MSRAdmin = null;  var reportingAdmin = null;  var generalAdmin = null;  var flexcacheAdmin = null;  var VTImportAccess = null;  var purchaseCardAdmin = null;  var reportingAccess = null;  var receiptAdmin = null;  var managedBillingAdmin = null;  var authRecycleAdmin = null;  var autoEmailAdmin = null;  var pinlessDebitAdmin = null;  var accountUpdaterAdmin = null;  var safetechFraudAdmin = null;  var hostedPayPageAdmin = null;  var limitedRefundAccess = null;    this.setFirstName = function(value){    if(!value || !String(value).trim()){      firstName = null;      return;    }
    firstName=String(value).trim().replace(/[\W]+/ig, " ");  }
  this.getFirstName = function(){    return firstName;  }
  this.setLastName = function(value){    if(!value || !String(value).trim()){      lastName = null;      return;    }
    lastName=String(value).trim().replace(/[\W]+/ig, " ");  }
  this.getLastName = function(){    return lastName;  }
  this.setEmailAddress = function(value){    if(!value || !String(value).trim()){      emailAddress = null;      return;    }
    emailAddress=String(value).trim();  }
  this.getEmailAddress = function(){    return emailAddress;  }
  this.setPhoneNumber = function(value){    if(!value || !String(value).trim()){      phoneNumber = null;      return;    }
    phoneNumber=String(value).trim().replace(/[\W]+/ig, "");  }
  this.getPhoneNumber = function(){    return phoneNumber;  }
  this.setBin = function(value){    if(!value || !String(value).trim()){      bin = null;      return;    }
    value = String(value).trim();
      switch(value){        case USERIMPORTSALEMBINVALUE:          bin = ORBITALUSERFORMSALEMBINVALUE;          this.setBinText(ORBITALUSERFORMSALEMBINTEXT);        break;
        case USERIMPORTTAMPABINVALUE:          bin = ORBITALUSERFORMTAMPABINVALUE;          this.setBinText(ORBITALUSERFORMTAMPABINTEXT);        break;
        default:          throw new Error("OrbitalUser.setBin: Bin is invalid (" + value + ")");        break;      }  }
  this.getBin = function(){    return bin;  }
  this.setBinText = function(value){    binText = String(value);  }
  this.getBinText = function(){    return binText;  }
  this.setAction = function(value){    if(!value || !String(value).trim()){      action = null;      status = null;      return;    }
    value = String(value).trim().toLowerCase();
    switch(value){      case 'add':      case 'create':      case 'insert':        action = IMPORTACTIONADDVALUE;        status = IMPORTFIELDENABLEVALUE;      break;
      case 'update':      case 'modify':      case 'change':        action = IMPORTACTIONUPDATEVALUE;        status = IMPORTFIELDENABLEVALUE;      break;
      case 'delete':      case 'remove':        action = IMPORTACTIONDELETEVALUE;        status = IMPORTFIELDDISABLEVALUE;        this.setAdminRights(IMPORTFIELDDISABLEVALUE);      break;
      case 'na':      case 'not applicable':      case 'none':        action = null;        status = null;      break;              default:        throw new Error("OrbitalUser.setAction: Action is invalid (" + value + ")");      break;    }  }
  this.getAction = function(){    return action;  }
  this.setContactLevel = function(value){    if(!value || !String(value).trim()){      contactLevel = null;      return;    }     value = String(value).trim();
    switch(value){      case USERIMPORTMERCHANTCONTACTLEVELVALUE:        contactLevel = ORBITALUSERFORMMERCHANTCONTACTLEVELVALUE;        this.setContactLevelText(ORBITALUSERFORMMERCHANTCONTACTLEVELTEXT);      break;
      case USERIMPORTCHAINCONTACTLEVELVALUE:                contactLevel = ORBITALUSERFORMCHAINCONTACTLEVELVALUE;        this.setContactLevelText(ORBITALUSERFORMCHAINCONTACTLEVELTEXT);      break;
      default:        throw new Error("OrbitalUser.setContactLevel: Contact Level is invalid (" + value + ")");      break;    }  }
  this.getContactLevel = function(){    return contactLevel;  }
  this.setContactLevelText = function(value){    contactLevelText = String(value);  }
  this.getContactLevelText = function(){    return contactLevelText;  }
  this.setAdminRights = function(value){    if(!value || !String(value).trim()){      adminRights = null;      this.setAdminRightsText('');      return;    }
    value = String(value).trim().toLowerCase();
    switch(value){      case 'true':      case 'yes':      case 'enable':      case 'active':        adminRights = ORBITALUSERFORMADMINRIGHTSENABLEDVALUE;        this.setAdminRightsText(ORBITALUSERFORMADMINRIGHTSENABLEDTEXT);      break;
      case 'false':      case 'no':      case 'disable':      case 'inactive':        adminRights = ORBITALUSERFORMADMINRIGHTSDISABLEDVALUE;        this.setAdminRightsText(ORBITALUSERFORMADMINRIGHTSDISABLEDTEXT);      break;
      case 'na':      case 'not applicable':      case 'none':        adminRights = null;        this.setAdminRightsText('');      break;
      default:        throw new Error("OrbitalUser.setAdminRights: Admin rights invalid (" + value + ")");      break;    }  }
  this.getAdminRights = function(){    if(this.getAction() == IMPORTACTIONDELETEVALUE){        adminRights = ORBITALUSERFORMADMINRIGHTSDISABLEDVALUE;        this.setAdminRightsText(ORBITALUSERFORMADMINRIGHTSDISABLEDTEXT);    }          return adminRights;  }
  this.setAdminRightsText = function(value){    adminRightsText = String(value);  }
  this.getAdminRightsText = function(){    return adminRightsText;  }
  this.setAccountNumbers = function(value){    var padding = 0;
    if(!value || !String(value).trim()){      accountNumbers = new Array();      return;    }
    value = String(value).trim();
    if(this.getContactLevel() == ORBITALUSERFORMCHAINCONTACTLEVELVALUE)      padding = CHAINACCOUNTPADDING;    else if(this.getBin() == ORBITALUSERFORMSALEMBINVALUE)      padding = SALEMACCOUNTPADDING;    else if(this.getBin() == ORBITALUSERFORMTAMPABINVALUE)      padding = TAMPAACCOUNTPADDING;
    accountNumbers = value.split(",");    self.status = "Account Numbers " + accountNumbers;
      for(var i=0; i<accountNumbers.length; ++i){        accountNumbers[i] = accountNumbers[i].trim();
        if(!accountNumbers[i].match(/^\d+$/i))          throw new Error("OrbitalUser.setAccountNumbers: Account number is invalid (" + accountNumbers[i] + ")");
        while(accountNumbers[i].length < padding)          accountNumbers[i] = "0" + accountNumbers[i];      }
      accountNumbers = accountNumbers.trim();     }
  this.getAccountNumbers = function(){    return accountNumbers.slice(0);  }
  this.setUsername = function(value){    if(!value || !String(value).trim()){      username = null;      return;    }
    username = String(value).trim();  }
  this.getUsername = function(){    if(this.isContactOnly())      return (username = null);
    if(username && this.getAction() == IMPORTACTIONADDVALUE){      while(username.length < 8)        username += Math.floor(Math.random()*10);    }
    return username;  }
  this.getSuggestedUsername = function(){    if(this.isContactOnly() || firstName == null || lastName == null)      return (suggestedUsername = null);
    suggestedUsername = firstName.charAt(0) + lastName;    suggestedUsername = suggestedUsername.replace(/[\W\s]+/ig, "");           while(suggestedUsername.length < 8)      suggestedUsername += Math.floor(Math.random()*10);
    return suggestedUsername;  }
  this.setStatus = function(value){    if(!value || !String(value).trim()){      status = null;      return;    }
    status = getBoolean(value);  }
  this.getStatus = function(){    return status;  }
  this.setLimitedRefundAccess = function(value){    if(!value || !String(value).trim()){      limitedRefundAccess = null;      return;    }
    limitedRefundAccess = getBoolean(value);  }
  this.getLimitedRefundAccess = function(){    return limitedRefundAccess;  }
  this.setUserRole = function(value){    if(!value || !String(value).trim()){      userRole = null;      this.setUserRoleText('');      return;    }
    userRoleText = value = String(value);
    //Removes not alphabet characters (ex. commas)    value = value.match(/(\w*)/ig).toString().replace(/,+/ig, ' ').replace(/\s+and\s+/ig, ' ');     value = value.trim().toLowerCase();
    switch(value){      case 'read only':      case 'read':         userRole = ORBITALUSERFORMUSERROLEREADONLYVALUE;         this.setUserRoleText(ORBITALUSERFORMUSERROLEREADONLYTEXT);      break;
      case 'auth only':      case 'auth':      case 'only auth allowed':      case 'auth allowed':         userRole = ORBITALUSERFORMUSERROLEAUTHONLYVALUE;         this.setUserRoleText(ORBITALUSERFORMUSERROLEAUTHONLYTEXT);      break;
      case 'auth mark':         userRole = ORBITALUSERFORMUSERROLEAUTHMARKVALUE;         this.setUserRoleText(ORBITALUSERFORMUSERROLEAUTHMARKTEXT);      break;
      case 'auth mark split':         userRole = ORBITALUSERFORMUSERROLEAUTHMARKSPLITVALUE;         this.setUserRoleText(ORBITALUSERFORMUSERROLEAUTHMARKSPLITTEXT);      break;
      case 'auth mark credit':         userRole = ORBITALUSERFORMUSERROLEAUTHMARKCREDITVALUE;         this.setUserRoleText(ORBITALUSERFORMUSERROLEAUTHMARKCREDITTEXT);      break;
      case 'auth mark split void':         userRole = ORBITALUSERFORMUSERROLEAUTHMARKSPLITVOIDVALUE;         this.setUserRoleText(ORBITALUSERFORMUSERROLEAUTHMARKSPLITVOIDTEXT);      break;
      case 'auth mark split void eod':         userRole = ORBITALUSERFORMUSERROLEAUTHMARKSPLITVOIDEODVALUE;         this.setUserRoleText(ORBITALUSERFORMUSERROLEAUTHMARKSPLITVOIDEODTEXT);      break;
      case 'auth mark reverse credit':         userRole = ORBITALUSERFORMUSERROLEAUTHMARKREVCREDVALUE;         this.setUserRoleText(ORBITALUSERFORMUSERROLEAUTHMARKREVCREDTEXT);      break;
      case 'everything allowed':      case 'everything':      case 'default':        userRole = ORBITALUSERFORMUSERROLEEVERYTHINGALLOWEDVALUE;        this.setUserRoleText(ORBITALUSERFORMUSERROLEEVERYTHINGALLOWEDTEXT);      break;          case 'na':      case 'not applicable':      case 'none':        userRole = null;        this.setUserRoleText('');      break;
      default:        throw new Error("OrbitalUser.setUserRole: User Role is invalid (" + value + ")");      break;    }
  }
  this.getUserRole = function(){    return userRole;  }
  this.setUserRoleText = function(value){    userRoleText = String(value);  }
  this.getUserRoleText = function(){    return userRoleText;  }
  this.setSoftDescriptorRole = function(value){    if(!value || !String(value).trim()){      softDescriptorRole = null;      this.setSoftDescriptorRoleText('');      return;    }
    softDescriptorRoleText = value = String(value);
    //Removes not alphabet characters (ex. commas)    value = value.match(/(\w*)/ig).toString().replace(/,+/ig, ' ').replace(/\s+and\s+/ig, ' ');     value = value.trim().toLowerCase();
    switch(value){      case 'user':      case 'user role':      case 'read':      case 'read only':        softDescriptorRole = ORBITALUSERFORMSOFTDESCRIPTORROLEREADVALUE;        this.setSoftDescriptorRoleText(ORBITALUSERFORMSOFTDESCRIPTORROLEREADTEXT);      break;
      case 'admin':      case 'admin role':      case 'administrator role':        softDescriptorRole = ORBITALUSERFORMSOFTDESCRIPTORROLEUPDATEVALUE;        this.setSoftDescriptorRoleText(ORBITALUSERFORMSOFTDESCRIPTORROLEUPDATETEXT);      break;
      case 'custom':      case 'custom role':        softDescriptorRole = ORBITALUSERFORMSOFTDESCRIPTORROLECUSTOMVALUE;        this.setSoftDescriptorRoleText(ORBITALUSERFORMSOFTDESCRIPTORROLECUSTOMTEXT);      break;          case 'disable':      case 'remove':      case 'no':      case 'no role':      case 'none':        softDescriptorRole = ORBITALUSERFORMSOFTDESCRIPTORROLENONEVALUE;        this.setSoftDescriptorRoleText(ORBITALUSERFORMSOFTDESCRIPTORROLENONETEXT);            break;
      case 'na':      case 'not applicable':        softDescriptorRole = null;        this.setSoftDescriptorRoleText('');      break;
      default:        throw new Error("OrbitalUser.setSoftDescriptorRole: Soft descriptor access is invalid (" + value + ")");      break;    }  }
  this.getSoftDescriptorRole = function(){    return softDescriptorRole;  }
  this.setSoftDescriptorRoleText = function(value){    softDescriptorRoleText = String(value);  }
  this.getSoftDescriptorRoleText = function(){    return softDescriptorRoleText;  }
  this.setProfileManagementRole = function(value){    if(!value || !String(value).trim()){      profileManagementRole = null;      this.setProfileManagementRoleText('');      return;    }
    profileManagementRoleText = value = String(value);
    //Removes not alphabet characters (ex. commas)    value = value.match(/(\w*)/ig).toString().replace(/,+/ig, ' ').replace(/\s+and\s+/ig, ' ');     value = value.trim().toLowerCase();
    switch(value){      case 'user':      case 'user role':      case 'read':      case 'read only':        profileManagementRole = ORBITALUSERFORMPROFILEMANAGEMENTROLEREADVALUE;        this.setProfileManagementRoleText(ORBITALUSERFORMPROFILEMANAGEMENTROLEREADTEXT);      break;
      case 'admin':      case 'admin role':      case 'administrator role':        profileManagementRole = ORBITALUSERFORMPROFILEMANAGEMENTROLEUPDATEVALUE;        this.setProfileManagementRoleText(ORBITALUSERFORMPROFILEMANAGEMENTROLEUPDATETEXT);      break;
      case 'disable':      case 'no':      case 'remove':      case 'no role':      case 'none':        profileManagementRole = ORBITALUSERFORMPROFILEMANAGEMENTROLENONEVALUE;        this.setProfileManagementRoleText(ORBITALUSERFORMPROFILEMANAGEMENTROLENONETEXT);      break;
      case 'na':      case 'not applicable':        profileManagementRole = null;        this.setProfileManagementRoleText('');      break;
      default:        throw new Error("OrbitalUser.setProfileManagementRole: Profile Management access is invalid (" + value + ")");      break;    }  }
  this.getProfileManagementRole = function(){    return profileManagementRole;  }
  this.setProfileManagementRoleText = function(value){    profileManagementRoleText = String(value);  }
  this.getProfileManagementRoleText = function(){    return profileManagementRoleText;  }
  this.setMaskAccountNumber = function(value){    if(!value || !String(value).trim()){      maskAccountNumber= null;      return;    }
    maskAccountNumber = getBoolean(value);  }
  this.getMaskAccountNumber = function(){    return maskAccountNumber;  }
  this.setMSRAdmin = function(value){    if(!value || !String(value).trim()){      MSRAdmin = null;      return;    }
    MSRAdmin = getBoolean(value);  }
  this.getMSRAdmin = function(){    return MSRAdmin;  }
  this.setReportingAdmin = function(value){    if(!value || !String(value).trim()){      reportingAdmin = null;      return;    }
    reportingAdmin = getBoolean(value);  }
  this.getReportingAdmin = function(){    return reportingAdmin;  }
  this.setGeneralAdmin = function(value){    if(!value || !String(value).trim()){      generalAdmin = null;      return;    }
    generalAdmin = getBoolean(value);  }
  this.getGeneralAdmin = function(){    return generalAdmin;  }
  this.setFlexcacheAdmin = function(value){    if(!value || !String(value).trim()){      flexcacheAdmin= null;      return;    }
    flexcacheAdmin = getBoolean(value);  }
  this.getFlexcacheAdmin = function(){    return flexcacheAdmin;  }
  this.setVTImportAccess = function(value){    if(!value || !String(value).trim()){      VTImportAccess = null;      return;    }
    VTImportAccess = getBoolean(value);  }
  this.getVTImportAccess = function(){    return VTImportAccess;  }
  this.setPurchaseCardAdmin = function(value){    if(!value || !String(value).trim()){      purchaseCardAdmin = null;      return;    }
    purchaseCardAdmin = getBoolean(value);  }
  this.getPurchaseCardAdmin = function(){    return purchaseCardAdmin;  }
  this.setReportingAccess = function(value){    if(!value || !String(value).trim()){      reportingAccess = null;      return;    }
    reportingAccess = getBoolean(value);  }
  this.getReportingAccess = function(){    return reportingAccess;  }
  this.setReceiptAdmin = function(value){    if(!value || !String(value).trim()){      receiptAdmin = null;      return;    }
    receiptAdmin = getBoolean(value);  }
  this.getReceiptAdmin = function(){    return receiptAdmin;  }
  this.setManagedBillingAdmin = function(value){    if(!value || !String(value).trim()){      managedBillingAdmin = null;      return;    }
    managedBillingAdmin = getBoolean(value);  }
  this.getManagedBillingAdmin = function(){    return managedBillingAdmin;  }
  this.setAuthRecycleAdmin = function(value){    if(!value || !String(value).trim()){      authRecycleAdmin = null;      return;    }
    authRecycleAdmin = getBoolean(value);  }
  this.getAuthRecycleAdmin = function(){    return authRecycleAdmin;  }
  this.setAutoEmailAdmin = function(value){    if(!value || !String(value).trim()){      autoEmailAdmin = null;      return;    }
    autoEmailAdmin = getBoolean(value);  }
  this.getAutoEmailAdmin = function(){    return autoEmailAdmin;  }
  this.setPinlessDebitAdmin = function(value){    if(!value || !String(value).trim()){      pinlessDebitAdmin = null;      return;    }
    pinlessDebitAdmin = getBoolean(value);  }
  this.getPinlessDebitAdmin = function(){    return pinlessDebitAdmin;  }
  this.setAccountUpdaterAdmin = function(value){    if(!value || !String(value).trim()){      accountUpdaterAdmin = null;      return;    }
    accountUpdaterAdmin = getBoolean(value);  }
  this.getAccountUpdaterAdmin = function(){    return accountUpdaterAdmin;  }
  this.setSafetechFraudAdmin = function(value){    if(!value || !String(value).trim()){      safetechFraudAdmin = null;      return;    }
    safetechFraudAdmin = getBoolean(value);  }
  this.getSafetechFraudAdmin = function(){    return safetechFraudAdmin;  }
  this.setHostedPayPageAdmin = function(value){    if(!value || !String(value).trim()){      hostedPayPageAdmin = null;      return;    }
    hostedPayPageAdmin = getBoolean(value);  }
  this.getHostedPayPageAdmin = function(){    return hostedPayPageAdmin;  }
  this.setMessage = function(value){    message += String(value) + "\n";  }
  this.getMessage = function(){    return message;  }
  this.isContactOnly = function(){    if(!this.getUserRole() && this.getAction() == IMPORTACTIONADDVALUE)      return true;
    return false;  }
  var getBoolean = function(value){    var result = null;
    value = String(value).trim().toLowerCase();
    switch(value){      case 'true':      case 'yes':      case 'enable':      case 'active':        result = true;      break;
      case 'false':      case 'no':      case 'disable':      case 'inactive':        result = false;      break;       default:        throw new Error("OrbitalUser.getBoolean: value provided is invalid (" + value + ")");      break;    }     return result;  }
  this.toString = function(){    return  '"' + username + '",'          + '"' + accountNumbers.toString().replace(",", ", ") + '",'          + '"' + action + ' ",'          + '"' + firstName + ' ",'          + '"' + lastName + ' ",'          + '"' + emailAddress + ' ",'          + '"' + phoneNumber + ' ",'          + '"' + userRoleText + ' ",'          + '"' + limitedRefundAccess + ' ",'          + '"' + adminRightsText + ' ",'          + '"' + reportingAccess + ' ",'          + '"' + profileManagementRoleText + ' ",'          + '"' + generalAdmin + ' ",'          + '"' + reportingAdmin + ' ",'          + '"' + receiptAdmin + ' ",'          + '"' + MSRAdmin + ' ",'          + '"' + VTImportAccess + ' ",'          + '"' + purchaseCardAdmin + ' ",'          + '"' + managedBillingAdmin + ' ",'          + '"' + autoEmailAdmin + ' ",'          + '"' + authRecycleAdmin + ' ",'          + '"' + pinlessDebitAdmin + ' ",'          + '"' + accountUpdaterAdmin + ' ",'          + '"' + softDescriptorRoleText + ' ",'          + '"' + flexcacheAdmin + ' ",'          + '"' + hostedPayPageAdmin + ' ",'          + '"' + safetechFraudAdmin + ' ",'          + '"' + bin + '",'          + '"' + contactLevelText + ' " ';  }}//EOC


////////////////////////////////////////////////

function IterminalDM(){  var iterminalUser;
  var userAccounts;  var missingAccounts;  var currentAccount;  var userEditUrl;  var accountRemovalCounter;  var waitTime;  var currentState;  var listener;  var debugMode = false;  var timeout = 5000;  var accountReplacePromptEnabled = true;  var nameSecurityPromptEnabled = true;  var accountSecurityPromptEnabled = true;  var overrideAutoSearch = false;
  var defaultNameSecurityAction = '';  var defaultAccountSecurityAction = '';  var defaultAccountRemovalAction = '';  var defaultAccountAction = '';
  var myself = this;  var iterminalWindow = window.open();
  var waitForForm = function(callback){        try{          self.status = "Waiting for response: " + waitTime;
          if(!iterminalWindow.document || iterminalWindow.document.readyState.toLowerCase() != "complete"){            if(waitTime >= timeout){              if(!confirm("The timeout limit has been reached. Would you like to continue waiting?"))                throw new Error("ITerminalDM.waitFormForm: The user cancelled because timeout limit has been reached.");                    waitTime = 0;            }
            waitTime += USERIMPORTPOLLINGTIME;            setTimeout(function(){waitForForm(callback)}, USERIMPORTPOLLINGTIME);          }              else{            waitTime = 0;            callback();          }            }        catch(e){          self.status = "Waiting for response exception: " + (e.description || e);
          if(waitTime >= timeout){            var event = new FumDum.Event();            event.setType("IterminalDM.failure");            event.setMessage(e.description);            if(listener)              listener(event);            return;          }
          waitTime += USERIMPORTPOLLINGTIME;          setTimeout(function(){waitForForm(callback)}, USERIMPORTPOLLINGTIME);        }
  }//EOF
  this.insertUser = function(user){    try{      userAccounts = new Array();      missingAccounts = new Array();      currentAccount = '';      userEditUrl = '';      waitTime = 0;      currentState = 'getSearchForm';
      if(debugMode)        alert("Status: iTerminal insert procedure begining");
      //VERIFY USER IS AN INSTANCE OF IterminalUSER      if(!(user instanceof IterminalUser))        throw new Error("ITerminalDM.inserUser: User must be an IterminalUser");
      if(user.getFirstName() == null)        throw new Error("ITerminalDM.inserUser: The user's first name is required");       if(user.getLastName() == null)        throw new Error("ITerminalDM.inserUser: The user's last name is required");       if(user.getEmailAddress() == null)        throw new Error("ITerminalDM.inserUser: The user's email address is required");       if(user.getContactLevel() == null)        throw new Error("ITerminalDM.inserUser: The user's contact level is required");
      if(user.getUserRole() == null)        throw new Error("ITerminalDM.inserUser: The user's role is required");        if(!user.getAccountNumbers().length){        if(!confirm("The user does not have any account numbers to be linked. Would you like to continue?"))          throw new Error("ITerminalDM.inserUser: The user cancelled add request because no account numbers were provided");      }
      iterminalUser = user;      userAccounts = iterminalUser.getAccountNumbers();
      try{        iterminalWindow.document;      }      catch(e){        iterminalWindow = window.open();      }
      waitForForm(manageInsert);    }    catch(e){      throw new Error("IterminalDM.insertUser: The user insert process did not complete.\n" + (e.description || e));    }  }
  var manageInsert = function(){    try{      switch(currentState){        case 'getSearchForm':          if(debugMode)            alert("Status: Requesting search form");          self.status = "Requesting user search form";
          getForm(ITERMINALFORMURL);          currentState ="getAddForm";          waitForForm(manageInsert);          self.status = "Waiting for user search form";        break;
        case 'getAddForm':          if(debugMode)            alert("Status: Requesting user add form.");          self.status = "Requesting user add form";
          submitForm(ITERMINALUSERSEARCHFORMADDUSERBUTTONVALUE);          currentState ="submitAddForm";          waitForForm(manageInsert);          self.status = "Waiting for user add form";       
        break;
        case 'submitAddForm':          if(debugMode)            alert("Status: Populating user add form");          self.status = "Populating user add form";
          populateUserForm(iterminalUser);
          if(debugMode){            if(!confirm("iTerminal add form has been populated. Would you like to send the add request?"))              throw new Error("ITerminalDM.manageInsert: The user cancelled out of adding the user");          }
          //SUBMIT USER ADD FORM          self.status = "Submit user add form";                    submitForm(ITERMINALUSERADDFORMADDUSERBUTTONVALUE);          currentState ="confirmUserAdd";          waitForForm(manageInsert);          self.status = "Waiting for user add response";               break;
        case 'confirmUserAdd':          if(debugMode)            alert("Status: Confirming user add.");          self.status = "Confirming user add";
          if(getUserAddConfirmationType()){              self.status = "Submit user confirmation add form";                        currentState ="submitConfirmationAddForm";              waitForForm(manageInsert);              return;          }
          var username = getUsernameCreated();          iterminalUser.setUsername(username);
          if(!username)            iterminalUser.setMessage('iTerminalDM.manageInsert: Username could not be determined')
          currentState ="submitAccountAdd";          waitForForm(manageInsert);        break;
        case 'submitConfirmationAddForm':
          switch(getUserAddConfirmationType()){            case ITERMINALNOEXISTINGUSERFOUNDCONFIRMATION:                submitForm(ITERMINALUSERADDFORMADDNEWUSERCONFIRMATIONBUTTONVALUE);                self.status = "Submit user add form";                          currentState ="confirmUserAdd";                waitForForm(manageInsert);                return;            break;
            case ITERMINALEXISTINGUSERFOUNDCONFIRMATION:              if(confirm("Please select an existing user from the user list in the open window and click \"OK\" or click \"Cancel\" to continue with add request."))                submitForm(ITERMINALUSERADDFORMADDEXISTINGUSERCONFIRMATIONBUTTONVALUE);              else                submitForm(ITERMINALUSERADDFORMADDNEWUSERCONFIRMATIONBUTTONVALUE);
              //SUBMIT USER ADD FORM                  self.status = "Submit user confirmation add form";                        currentState ="confirmUserAdd";              waitForForm(manageInsert);              self.status = "Waiting for user add response";             break;
            default:              throw new Error("IterminalDM.insertUser: Invalid user confirmation (Value: " + getUserAddConfirmationType() + ")");            break;          }              break;
        case 'submitAccountAdd':          if(!userAccounts.length){            var event = new FumDum.Event();            event.setType("IterminalDM.success");            if(listener)              listener(event);
            return;          }
          if(debugMode)            alert("Status: Populating account add form");          self.status = "Populating account add form";
          currentAccount = userAccounts.pop();          populateUserEditFormAccountNumber(currentAccount);
          if(debugMode){            if(!confirm("Account has been populated. Would you like to send account link request?"))              throw new Error("ITerminalDM.manageInsert: The user cancelled out of account link request");          }
          //SUBMITTING ACCOUNT LINK REQUEST          self.status = "Submitting account link request";           if(iterminalUser.getContactLevel() == ITERMINALUSERFORMMERCHANTCONTACTLEVELVALUE)            submitForm(ITERMINALUSEREDITFORMADDMERCHANTACCOUNTBUTTONVALUE);          else if(iterminalUser.getContactLevel() == ITERMINALUSERFORMCHAINCONTACTLEVELVALUE)            submitForm(ITERMINALUSEREDITFORMADDCHAINACCOUNTBUTTONVALUE);
          currentState ="confirmAccountAdd";          waitForForm(manageInsert);          self.status = "Waiting for account add response";               break;
        case 'confirmAccountAdd':          if(debugMode)            alert("Status: Confirming account add");          self.status = "Confirming account add";
          if(!confirmUpdate()){            iterminalUser.setMessage("Account " + currentAccount + " may not have been linked!");            if(!confirm("The account " + currentAccount + " may not have been linked to " + iterminalUser.getFirstName() + " " + iterminalUser.getLastName() + ". Would you like to continue with remaining accounts?"))              throw new Error("ITerminalDM.manageInsert: The user cancelled out of linking accounts to the user");          }
          currentState ="submitAccountAdd";          manageInsert();             break;
        default:          throw new Error("ITerminalDM.manageInsert: insert state is invalid and user status is unknown");        break;
      }//EOS
    }    catch(e){      iterminalWindow = null;      var event = new FumDum.Event();      event.setType("IterminalDM.failure");      event.setMessage("IterminalDM.manageInsert: The insert process did not complete (Current State: " + currentState + ").\n" + (e.description || e));      if(listener)        listener(event); 
      return;    }
  }//EOF
  this.updateUser = function(user){    try{      userAccounts = new Array();      missingAccounts = new Array();      currentAccount = '';      userEditUrl = '';      accountRemovalCounter = 0;      waitTime = 0;      currentState = 'getSearchForm';
      if(debugMode)        alert("Status: iTerminal update initializing");
      //VERIFY USER IS AN INSTANCE OF ORBITAL USER      if(!(user instanceof IterminalUser))        throw new Error("ITerminalDM.updateUser: User must be an IterminalUser");
      if(user.getUsername() == null)        throw new Error("ITerminalDM.updateUser: The iTerminal username is required to update a user");       if(!user.getAccountNumbers().length){        if(!confirm("The user does not have any account numbers to be linked. Would you like to continue?"))          throw new Error("ITerminalDM.updateUser: The user cancelled add request because no account numbers were provided");      }
      iterminalUser = user;      userAccounts = iterminalUser.getAccountNumbers();
      try{        iterminalWindow.document;      }      catch(e){        iterminalWindow = window.open();      }
      waitForForm(manageUpdate);    }    catch(e){      throw new Error("IterminalDM.updateUser: The user update process did not complete.\n" + (e.description || e));    }  }

  var manageUpdate = function(){    try{      switch(currentState){        case 'getSearchForm':          if(debugMode)            alert("Status: Requesting search form");          self.status = "Requesting user search form";
          getForm(ITERMINALFORMURL);          currentState ="clearUserSearch";          waitForForm(manageUpdate);          self.status = "Waiting for user search form";        break;
         case 'clearUserSearch':          if(debugMode)            alert("Status: Clearing search form");          self.status = "Clearing user search form";                    clearForm();          currentState = "submitUserSearch";          waitForForm(manageUpdate);        break;
        case 'submitUserSearch':
          //POPULATE USER SEARCH FORM          self.status = "Populating user search form";
          populateUserSearchFormUsername(iterminalUser.getUsername());          self.status = "Submitting user search request";
          if(debugMode){            if(!confirm("iTerminal search form has been populated. Would you like to send the search request?"))              throw new Error("ITerminalDM.manageUpdate: The user cancelled out of searching for the user");          }
          //SUBMIT USER SEARCH FORM          self.status = "Submit user search form";                    submitForm(ITERMINALUSERSEARCHFORMSEARCHBUTTONVALUE);          currentState ="confirmUserFound";          waitForForm(manageUpdate);          self.status = "Waiting for user search response";        
        break;
        case 'confirmUserFound':          if(debugMode)            alert("Status: Confirming user exists");              self.status = "Confirming user exists";  
          userEditUrl = confirmUsernameFound(iterminalUser.getUsername());          if(!userEditUrl)            throw new Error("iTerminalDM.manageUpdate: The username was not found in search results");
          currentState ="submitAccountSearch";          manageUpdate();        break;
        case 'submitAccountSearch':          if(!userAccounts.length){            currentState ="getUserEdit";            manageUpdate();            return;          }
          if(debugMode)            alert("Status: Populating account search form");          self.status = "Populating account search form";
          //POPULATE ACCOUNT ADD FORM          currentAccount = userAccounts.pop();          populateUserSearchFormUsername(iterminalUser.getUsername());          populateUserSearchFormAccountNumber(iterminalUser.getContactLevel(), currentAccount);
          if(debugMode){            if(!confirm("Iterminal search form has been populated. Would you like to send the search request?"))              throw new Error("ITerminalDM.manageUpdate: The user cancelled out of searching for user's account");          }
          //SUBMIT USER SEARCH FORM          self.status = "Submit account search form";                    submitForm(ITERMINALUSERSEARCHFORMSEARCHBUTTONVALUE);          currentState ="confirmAccountLinked";          waitForForm(manageUpdate);          self.status = "Waiting for user search response";               break;
        case 'confirmAccountLinked':          if(debugMode)            alert("Status: Confirming account linked to user");          self.status = "Confirming account linked to user";
          if(!confirmUsernameFound(iterminalUser.getUsername()))            missingAccounts.push(currentAccount);
          currentState ="submitAccountSearch";          manageUpdate();             break;

        case 'getUserEdit':          if(debugMode)            alert("Status: Requesting user edit form");          self.status = "Requesting user edit form";
          getForm(userEditUrl);
          currentState ="submitEditForm";          waitForForm(manageUpdate);          self.status = "Waiting for user edit form";          break;

        case 'submitEditForm':          if(debugMode)            alert("Status: Populating user edit form");          self.status = "Populating user edit form";
          var firstName = getFormFieldValue(ITERMINALUSEREDITFORMFIRSTNAMEFIELDNAME);   var lastName = getFormFieldValue(ITERMINALUSEREDITFORMLASTNAMEFIELDNAME);   //var contactLevel = getFormFieldValue(ITERMINALUSEREDITFORMCONTACTLEVELFIELDNAME);
          if(iterminalUser.getFirstName().toLowerCase() != firstName.toLowerCase() && iterminalUser.getLastName().toLowerCase() != lastName.toLowerCase()){            var editNameAction = '';            while(!editNameAction){              if(nameSecurityPromptEnabled){                editNameAction = prompt("The first and last name provided does not match the user's account. Would you like to Continue?"                                       +" Enter \"Continue\" or click Cancel", defaultNameSecurityAction);              }              else                editNameAction = 'Continue';
              switch(editNameAction){                case 'Continue':                case 'continue':                  defaultNameSecurityAction = "Continue";                break;
                case null:                  throw new Error("iTerminalDM.manageUpdate: The user cancelled out of editting the user due to the name not matching the user's account");                                  break;
                default:                  alert("Invalid option entered: " + editNameAction);                  editNameAction = '';                break;                }//EOS            }//EOW
          }
          //Security Validations          if(iterminalUser.getAccountNumbers().length == missingAccounts.length){            var editAccountAction = '';            while(!editAccountAction){              if(accountSecurityPromptEnabled){                editAccountAction = prompt("None of the accounts provided are linked to the user. Would you like to Continue?"                                          +" Enter \"Continue\" or click Cancel", defaultAccountSecurityAction);              }              else                editAccountAction = 'Continue';
              switch(editAccountAction){                case 'Continue':                case 'continue':                  defaultAccountSecurityAction = "Continue";                break;
                case null:                  throw new Error("iTerminalDM.manageUpdate: The user cancelled out of editting the user due to none of the accounts provided being linked to the user");                break;
                default:                  alert("Invalid option entered: " + editAccountAction);                  editAccountAction = '';                break;                }//EOS            }//EOW          }         
          populateUserForm(iterminalUser);
          if(debugMode){            if(!confirm("Iterminal edit form has been populated. Would you like to send the edit request?"))              throw new Error("ITerminalDM.manageUpdate: The user cancelled out of editting the user");          }
          //SUBMIT USER EDIT FORM          self.status = "Submit user edit form";                    submitForm(ITERMINALUSEREDITFORMUSERBUTTONVALUE );
          currentState = "confirmUserEdit";          waitForForm(manageUpdate);          self.status = "Waiting for user edit response";               break;
        case 'confirmUserEdit':          if(debugMode)            alert("Status: Confirming user edit.");          self.status = "Confirming user edit";
          if(!confirmUpdate()){            iterminalUser.setMessage("The user may not have been updated");            throw new Error("ITerminalDM.manageUpdate: The user may not have been updated");          }
          //USER DELETES DO NOT NEED TO MODIFY ACCOUNT NUMBERS          if(iterminalUser.getAction() == IMPORTACTIONDELETEVALUE){            var event = new FumDum.Event();            event.setType("IterminalDM.success");            if(listener)              listener(event);
            return;          }
          currentState = "getAccountEdit";          manageUpdate();        break;
        case 'getAccountEdit':          userAccounts = iterminalUser.getAccountNumbers();
          if(!userAccounts.length){            var event = new FumDum.Event();            event.setType("IterminalDM.success");            if(listener)              listener(event);
            return;          }
          self.status = "Missing accounts: " + missingAccounts;
          var accountAction = '';          while(!accountAction){            if(accountReplacePromptEnabled){              if(!missingAccounts.length)                defaultAccountRemovalAction = accountAction = prompt("User already linked to accounts provided. Would you like to Remove any additional accounts the user has?"                                                                    +" Enter \"Remove\" or click Cancel", defaultAccountRemovalAction);              else                defaultAccountAction = accountAction = prompt("Would you like to Append the missing accounts or Replace all accounts the user may have?"                                                             +" Enter \"Append\" or \"Replace\"", defaultAccountAction);            }            else              accountAction = "append";
            switch(accountAction){              case 'Append':              case 'append':                userAccounts = missingAccounts;                                currentState = "submitAccountAdd";              break;
              case 'Remove':              case 'remove':              case 'Replace':              case 'replace':                currentState = "submitAccountRemoval";              break;
              case null:                var event = new FumDum.Event();                event.setType("IterminalDM.success");                if(listener)                  listener(event);                return;              break;
              default:                alert("Invalid option entered: " + accountAction);                accountAction = '';              break;
            }//EOS
          }//EOW
          manageUpdate();        break;
        case 'submitAccountAdd':          if(!userAccounts.length){            var event = new FumDum.Event();            event.setType("IterminalDM.success");            if(listener)              listener(event);
            return;          }
          if(debugMode)            alert("Status: Populating account add form");          self.status = "Populating account add form";
          currentAccount = userAccounts.pop();          populateUserEditFormAccountNumber(currentAccount);
          if(debugMode){            if(!confirm("Account has been populated. Would you like to send account link request?"))              throw new Error("ITerminalDM.manageUpdate: The user cancelled out of account link request");          }
          //SUBMITTING ACCOUNT LINK REQUEST          self.status = "Submitting account link request";                    if(iterminalUser.getContactLevel() == ITERMINALUSERFORMMERCHANTCONTACTLEVELVALUE)            submitForm(ITERMINALUSEREDITFORMADDMERCHANTACCOUNTBUTTONVALUE);          else if(iterminalUser.getContactLevel() == ITERMINALUSERFORMCHAINCONTACTLEVELVALUE)            submitForm(ITERMINALUSEREDITFORMADDCHAINACCOUNTBUTTONVALUE);
          currentState ="confirmAccountAdd";          waitForForm(manageUpdate);          self.status = "Waiting for account add response";               break;
        case 'confirmAccountAdd':          if(debugMode)            alert("Status: Confirming account add");          self.status = "Confirming account add";
          if(!confirmUpdate()){            iterminalUser.setMessage("Account " + currentAccount + " may not have been linked!");            if(!confirm("The account " + currentAccount + " may not have been linked to " + iterminalUser.getFirstName() + " " + iterminalUser.getLastName() + ". Would you like to continue with remaining accounts?"))              throw new Error("ITerminalDM.manageUpdate: The user cancelled out of linking accounts to the user");          }
          currentState ="submitAccountAdd";          manageUpdate();             break;
        case 'submitAccountRemoval':          if(debugMode)            alert("Status: Removing user's accounts");          self.status = "Removing user's accounts";
          if(!selectUsersAccounts()){            if(!accountRemovalCounter)              throw new Error("IterminalDM.manageUpdate: Accounts could not be removed.");            else{              currentState = "submitAccountAdd";              manageUpdate();              return;            }          }
          ++accountRemovalCounter;
          if(debugMode){            if(!confirm("The accounts have been selected. Would you like to remove the accounts?"))              throw new Error("IterminalDM.manageUpdate: The user cancelled out of account removal request");          }
          //SUBMITTING ACCOUNT LINK REQUEST          self.status = "Submitting account removal request";          submitForm("delete checked");
          currentState ="confirmAccountRemoval";          waitForForm(manageUpdate);          self.status = "Waiting for account removal response";               break;
        case 'confirmAccountRemoval':          if(debugMode)            alert("Status: Confirming account removal");          self.status = "Confirming account removal";
          if(!confirmUpdate()){            iterminalUser.setMessage("Accounts may not have been updated");            throw new Error("IterminalDM.manageUpdate: Accounts may not have been updated");          }
          currentState ="submitAccountRemoval";          manageUpdate();              break;
        default:          throw new Error("IterminalDM.manageUpdate: update state is invalid and user status is unknown");        break;
      }//EOS
    }    catch(e){      iterminalWindow = null;      var event = new FumDum.Event();      event.setType("IterminalDM.failure");      event.setMessage("IterminalDM.manageUpdate: The update process did not complete (Current State: " + currentState + ").\n" + (e.description || e));      if(listener)        listener(event); 
      return;    }  }//EOF
  this.setTimeout = function(time){    time = parseInt(time);
    if(isNaN(time))      throw new Error("ITerminalDM.setTimeout: The timeout must be an integer");
    timeout = time;  }//EOF
  this.setOverrideAutoSearch = function(value){    if(typeof value != 'boolean')      throw new Error("OrbitalDM.setOverrideAutoSearch: value must be a boolean value");     overrideAutoSearch = value;  }//EOF
  this.setAccountReplacePrompt = function(value){    if(typeof value != 'boolean')      throw new Error("OrbitalDM.setAccountReplacePrompt: value must be a boolean value");     accountReplacePromptEnabled = value;  }//EOF
  this.setNameSecurityPrompt = function(value){    if(typeof value != 'boolean')      throw new Error("OrbitalDM.setNameSecurityPrompt: value must be a boolean value");
    nameSecurityPromptEnabled = value;  }//EOF
  this.setAccountSecurityPrompt = function(value){    if(typeof value != 'boolean')      throw new Error("OrbitalDM.setAccountSecurityPrompt: value must be a boolean value");
    accountSecurityPromptEnabled = value;  }//EOF
  this.addListener = function(method){    if(typeof method != "function")      throw new Error("ITerminalDM.addListener: Listener must be a method");
    listener = method;  }//EOF
  this.setDebugMode = function(mode){    if(typeof mode != "boolean")      throw new Error("ITerminalDM.setDebugMode: Debug mode must be a boolean value");
    debugMode = mode;
  }//EOF
  var getUserAddConfirmationType = function(){    if(iterminalWindow.document.body.innerHTML.match(ITERMINALFORMADDNOUSERFOUNDCONFIRMATIONREGEXP))      return ITERMINALNOEXISTINGUSERFOUNDCONFIRMATION;
    if(iterminalWindow.document.body.innerHTML.match(ITERMINALFORMADDEXISTINGUSERFOUNDCONFIRMATIONREGEXP))      return ITERMINALEXISTINGUSERFOUNDCONFIRMATION;
    return false;  }
  var getForm = function(url){    //RETRIEVING USER SEARCH FORM    iterminalWindow.location.assign(url);  }//EOF
  var clearForm = function(url){    //POPULATE ACCOUNT LINK FORM    if(e = iterminalWindow.document.getElementsByName(ITERMINALUSERSEARCHFORMCLEARSEARCHBUTTONVALUE)[0])      e.click();  }//EOF
  var submitForm = function(buttonName){    //SUBMITTING USER ADD REQUEST    self.status = "Submitting user add request";    var submitted = false;    inputs = iterminalWindow.document.getElementsByTagName("input");    for(var i=0; i<inputs.length; ++i){      if(inputs[i].type.toLowerCase() == "button" && inputs[i].value.toLowerCase() == buttonName.toLowerCase()){        submitted = true;        inputs[i].click();        break;      }    }
    if(!submitted)      throw new Error("IterminalDM.submitForm: The iTerminal form could not be submitted");  }//EOF
  var getUsernameCreated = function(){    var username = '';
    if(iterminalWindow.document.body.innerHTML.match(ITERMINALFORMUPDATECONFIRMATIONREGEXP)){      if((matches = iterminalWindow.document.body.innerHTML.match(ITERMINALUSERFORMADDUSERREGEXP)) && matches[1])        username = matches[1];    }    else      throw new Error("IterminalDM.getUsernameCreated: The user add appears to have failed so please review the open window for additional information.");
    return username;
  } //EOF  
  var confirmUsernameFound = function(username){    var userReg = new RegExp("\>\s*" + username + "\s*\<", 'i');    var inputs = iterminalWindow.document.getElementsByTagName("a");
    for(var i=0; i<inputs.length; ++i){      if(inputs[i].innerHTML.match(userReg))        return inputs[i].href;    }
    return '';
  } //EOF  
  var selectUsersAccounts = function(){    var accountsFound = false;
    if((e = iterminalWindow.document.getElementsByName(ITERMINALUSEREDITFORMACCOUNTCHECKBOXFIELDNAME)) && e.length){      accountsFound = true;      for(var i=0; i<e.length; ++i){        if(!e[i].checked)          e[i].click();      }    }     return accountsFound;  }//EOF
  var confirmUpdate = function(){    return iterminalWindow.document.body.innerHTML.match(ITERMINALFORMUPDATECONFIRMATIONREGEXP);  }//EOF
  // FORM FEILD GETTERS AND SETTERS    var setFormFieldValue = function(elementName, value){    if(e = iterminalWindow.document.getElementsByName(elementName)[0]){
      switch(e.type){        case 'checkbox':          if(value && !e.checked)            e.click();          else if (!value && e.checked)            e.click();        break;
        case 'text':        case 'select-one':        case 'select-multiple':          e.value = value;        break;
        default:          throw new Error("IterminalDM.setFormFieldValue: " + elementName + " field type not recognized.");        break;      }    }    else      throw new Error("IterminalDM.setFormFieldValue: " + elementName + " field was not found in the form.");    }
  var getFormFieldValue = function(elementName){    if(e = iterminalWindow.document.getElementsByName(elementName)[0]){      switch(e.type){        case 'checkbox':          return e.checked;        break;
        case 'text':          return e.value;        break;
        case 'select-one':        case 'select-multiple':          return e.options[e.selectedIndex].text;        break;
        default:          throw new Error("IterminalDM.getFormFieldValue: " + elementName + " field type not recognized.");        break;      }    }    else      throw new Error("IterminalDM.getFormFieldValue: " + elementName + " field was not found in the form.");    }
  var populateUserSearchFormUsername = function(username){    try{      setFormFieldValue(ITERMINALUSERSEARCHFORMUSERNAMEFIELDNAME, username);    }    catch(e){      throw new Error("IterminalDM.populateUserSearchFormUsername: Username field on Search form could not be populated.\n" + (e.description || e));    }  }
  var populateUserSearchFormAccountNumber = function(contactLevel, accountNumber){    try{      if(contactLevel == ITERMINALUSERFORMMERCHANTCONTACTLEVELVALUE)        setFormFieldValue(ITERMINALUSERSEARCHFORMMERCHANTIDFIELDNAME, accountNumber);      else if(contactLevel == ITERMINALUSERFORMCHAINCONTACTLEVELVALUE)        setFormFieldValue(ITERMINALUSERSEARCHFORMCHAINIDFIELDNAME, accountNumber);      else        throw new Error("IterminalDM.setSearchFormAccount: The contact level is invalid");    }    catch(e){      throw new Error("IterminalDM.populateUserSearchFormUsername: Account number field on Search form could not be populated.\n" + (e.description || e));    }  }
  var populateUserEditFormAccountNumber = function(accountNumber){    try{      setFormFieldValue(ITERMINALUSEREDITFORMACCOUNTNUMBERFIELDNAME, accountNumber);    }    catch(e){      throw new Error("IterminalDM.populateUserEditFormAccountNumber: Account number field on user edit form could not be populated.\n" + (e.description || e));    }      }
  var populateUserForm = function(user){    var setOptionalFormFieldValue = function(elementName, value){      try{        setFormFieldValue(elementName, value);      }      catch(e){        user.setMessage(e.description || e);      }    }    var getOptionalFormFieldValue = function(elementName){      try{        var value = '';        value = getFormFieldValue(elementName);      }      catch(e){
      }
      return value;    }
    //REQUIRED FIELDS    try{
      //HANDLES ACTION SPECIFIC FIELDS      switch(user.getAction()){
        case IMPORTACTIONDELETEVALUE:          if(user.getStatus() != null){            setFormFieldValue(ITERMINALUSEREDITFORMSTATUSFIELDNAME, user.getStatus());            var statusText = getOptionalFormFieldValue(ITERMINALUSEREDITFORMSTATUSFIELDNAME);            if(user.getStatusText().toLowerCase() != statusText.toLowerCase())              user.setMessage("Status may not have been set properly");            user.setStatusText(statusText);          }         
        break;
        case IMPORTACTIONADDVALUE:          //REQUIRED FIELDS          if(overrideAutoSearch)            setOptionalFormFieldValue(ITERMINALUSERADDFORMOVERRIDEAUTOSEARCHNAME, true);
          if(user.getCompanyName() != null)            setFormFieldValue(ITERMINALUSERADDFORMCOMPANYNAMEFIELDNAME, user.getCompanyName());          if(user.getFirstName() != null)            setFormFieldValue(ITERMINALUSERADDFORMFIRSTNAMEFIELDNAME, user.getFirstName());          if(user.getLastName() != null)            setFormFieldValue(ITERMINALUSERADDFORMLASTNAMEFIELDNAME, user.getLastName());          if(user.getEmailAddress() != null)            setFormFieldValue(ITERMINALUSERADDFORMEMAILFIELDNAME, user.getEmailAddress());          if(user.getPhoneNumber() != null)            setOptionalFormFieldValue(ITERMINALUSERADDFORMPHONEFIELDNAME, user.getPhoneNumber());   
          if(user.getContactLevel() != null){            setFormFieldValue(ITERMINALUSERADDFORMCONTACTLEVELFIELDNAME, user.getContactLevel());            var contactLevelText = getOptionalFormFieldValue(ITERMINALUSERADDFORMCONTACTLEVELFIELDNAME);            if(user.getContactLevelText().toLowerCase() != contactLevelText.toLowerCase())              user.setMessage("Contact level may not have been set properly");            user.setContactLevelText(contactLevelText);          }
          if(user.getUserRole() != null){            setFormFieldValue(ITERMINALUSERADDFORMUSERROLEFIELDNAME, user.getUserRole());            var userRoleText = getOptionalFormFieldValue(ITERMINALUSERADDFORMUSERROLEFIELDNAME);             if(user.getUserRoleText().toLowerCase() != userRoleText.toLowerCase())              user.setMessage("User Role may not have been set properly");            user.setUserRoleText(userRoleText);          }
          if(user.getStatus() != null){            setOptionalFormFieldValue(ITERMINALUSERADDFORMSTATUSFIELDNAME, user.getStatus());            var statusText = getOptionalFormFieldValue(ITERMINALUSERADDFORMSTATUSFIELDNAME);             if(user.getStatusText().toLowerCase() != statusText.toLowerCase())              user.setMessage("Status may not have been set properly");            user.setStatusText(statusText);          }        if(user.getRefundAccess() != null){            setOptionalFormFieldValue(ITERMINALUSERADDFORMREFUNDFIELDNAME, user.getRefundAccess());            var refundText = getOptionalFormFieldValue(ITERMINALUSERADDFORMREFUNDFIELDNAME);             if(user.getRefundText().toLowerCase() != refundText.toLowerCase())              user.setMessage("Refund status may not have been set properly");            user.setRefundAccess(refundText);          }        if(user.getVoidAccess() != null){            setOptionalFormFieldValue(ITERMINALUSERADDFORMVOIDFIELDNAME, user.getVoidAccess());          }
          if(user.getUsername() != null)            setFormFieldValue(ITERMINALUSERADDFORMUSERNAMEFIELDNAME, user.getUsername());          else if(user.getSuggestedUsername() != null)            setFormFieldValue(ITERMINALUSERADDFORMUSERNAMEFIELDNAME, user.getSuggestedUsername());
        break;
        case IMPORTACTIONUPDATEVALUE:          if(user.getCompanyName() != null)            setFormFieldValue(ITERMINALUSEREDITFORMCOMPANYNAMEFIELDNAME, user.getCompanyName());          if(user.getFirstName() != null)            setFormFieldValue(ITERMINALUSEREDITFORMFIRSTNAMEFIELDNAME, user.getFirstName());          if(user.getLastName() != null)            setFormFieldValue(ITERMINALUSEREDITFORMLASTNAMEFIELDNAME, user.getLastName());          if(user.getEmailAddress() != null)            setFormFieldValue(ITERMINALUSEREDITFORMEMAILFIELDNAME, user.getEmailAddress());          if(user.getPhoneNumber() != null)            setOptionalFormFieldValue(ITERMINALUSEREDITFORMPHONEFIELDNAME, user.getPhoneNumber());
          if(user.getStatus() != null){            setOptionalFormFieldValue(ITERMINALUSEREDITFORMSTATUSFIELDNAME, user.getStatus());            var statusText = getOptionalFormFieldValue(ITERMINALUSEREDITFORMSTATUSFIELDNAME);             if(user.getStatusText().toLowerCase() != statusText.toLowerCase())              user.setMessage("Status may not have been set properly");            user.setStatusText(statusText);          }
          if(user.getUserRole() != null){            setFormFieldValue(ITERMINALUSEREDITFORMUSERROLEFIELDNAME, user.getUserRole());            var userRoleText = getOptionalFormFieldValue(ITERMINALUSEREDITFORMUSERROLEFIELDNAME);             if(user.getUserRoleText().toLowerCase() != userRoleText.toLowerCase())              user.setMessage("User Role may not have been set properly");            user.setUserRoleText(userRoleText);          }        if(user.getRefundAccess() != null){            setOptionalFormFieldValue(ITERMINALUSEREDITFORMREFUNDFIELDNAME, user.getRefundAccess());            var refundText = getOptionalFormFieldValue(ITERMINALUSEREDITFORMREFUNDFIELDNAME);             if(user.getRefundText().toLowerCase() != refundText.toLowerCase())              user.setMessage("Refund Access may not have been set properly");            user.setRefundText(refundText);          }        if(user.getVoidAccess() != null){            setOptionalFormFieldValue(ITERMINALUSEREDITFORMVOIDFIELDNAME, user.getVoidAccess());          }        break; 
        default:          throw new Error("IterminalDM.populateUserForm: Unexpected user action.\n" + (e.description || e));
        break;
      }//EOS

    }    catch(e){      throw new Error("IterminalDM.populateUserForm: User form fields could not be populated.\n" + (e.description || e));    }
  }//EOF
  this.close = function(){    if(iterminalWindow)      iterminalWindow.close();  }
}//EOC

function IterminalUser(){  var message = '';  var companyName = null;  var firstName = null;  var lastName = null;  var emailAddress = null;  var phoneNumber = null;  var contactLevel = null;  var contactLevelText = '';  var accountNumbers = new Array();  var action = null;  var username = null;  var suggestedUsername = null;  var status = null;  var statusText = '';  var userRole = null;  var userRoleText = '';  var refundAccess = null;  var refundText = '';  var voidAccess = null;

  this.setCompanyName = function(value){    if(!value || !String(value).trim()){      companyName = null;      return;    }
    companyName=String(value).trim();  }
  this.getCompanyName = function(){    return companyName;  }
  this.setFirstName = function(value){    if(!value || !String(value).trim()){      firstName = null;      return;    }
    firstName=String(value).trim().replace(/[\W]+/ig, " ");  }
  this.getFirstName = function(){    return firstName;  }
  this.setLastName = function(value){    if(!value || !String(value).trim()){      lastName = null;      return;    }
    lastName=String(value).trim().replace(/[\W]+/ig, " ");  }
  this.getLastName = function(){    return lastName;  }
  this.setEmailAddress = function(value){    if(!value || !String(value).trim()){      emailAddress = null;      return;    }
    emailAddress=String(value).trim();        if((matches = emailAddress.match(/\@(.*)\./i)) && matches[1])      this.setCompanyName(matches[1]);  }
  this.getEmailAddress = function(){    return emailAddress;  }
  this.setPhoneNumber = function(value){    if(!value || !String(value).trim()){      phoneNumber = null;      return;    }
    phoneNumber=String(value).trim().replace(/[\W]+/ig, "");  }
  this.getPhoneNumber = function(){    return phoneNumber;  }
  this.setAction = function(value){    if(!value || !String(value).trim()){      action = null;      status = null;      this.setStatusText('');      return;    }
    value = String(value).trim().toLowerCase();
    switch(value){      case 'add':      case 'create':      case 'insert':        action = IMPORTACTIONADDVALUE;        status = ITERMINALUSERFORMSTATUSACTIVEVALUE;        this.setStatusText(ITERMINALUSERFORMSTATUSACTIVETEXT);      break;
      case 'update':      case 'modify':      case 'change':        action = IMPORTACTIONUPDATEVALUE;        status = ITERMINALUSERFORMSTATUSACTIVEVALUE;        this.setStatusText(ITERMINALUSERFORMSTATUSACTIVETEXT);      break;
      case 'delete':      case 'remove':        action = IMPORTACTIONDELETEVALUE;        status = ITERMINALUSERFORMSTATUSINACTIVEVALUE;        this.setStatusText(ITERMINALUSERFORMSTATUSINACTIVETEXT);      break;          case 'na':      case 'not applicable':      case 'none':        action = null;        status = null;        this.setStatusText('');      break;              default:        throw new Error("IterminalUser.setAction: Action is invalid (" + value + ")");      break;    }  }
  this.getAction = function(){    return action;  }
  this.setContactLevel = function(value){    if(!value || !String(value).trim()){      contactLevel = null;      return;    }     value = String(value).trim();
    switch(value){      case USERIMPORTMERCHANTCONTACTLEVELVALUE:        contactLevel = ITERMINALUSERFORMMERCHANTCONTACTLEVELVALUE;        this.setContactLevelText(ITERMINALUSERFORMMERCHANTCONTACTLEVELTEXT);      break;
      case USERIMPORTCHAINCONTACTLEVELVALUE:                contactLevel = ITERMINALUSERFORMCHAINCONTACTLEVELVALUE;        this.setContactLevelText(ITERMINALUSERFORMCHAINCONTACTLEVELTEXT);      break;
      default:        throw new Error("ITerminalUser.setContactLevel: Contact Level is invalid (" + value + ")");      break;    }  }
  this.getContactLevel = function(){    return contactLevel;  }
  this.setContactLevelText = function(value){    contactLevelText = String(value);  }
  this.getContactLevelText = function(){    return contactLevelText;  }
  this.setAccountNumbers = function(value){    var padding = TAMPAACCOUNTPADDING;
    if(!value || !String(value).trim()){      accountNumber = new Array();      return;    }
    if(this.getContactLevel() == ITERMINALUSERFORMCHAINCONTACTLEVELVALUE)      padding = CHAINACCOUNTPADDING;
    accountNumbers = String(value).split(",");    self.status = "Account Numbers " + accountNumbers;
      for(var i=0; i<accountNumbers.length; ++i){        accountNumbers[i] = accountNumbers[i].trim();
        if(!accountNumbers[i].match(/^\d+$/i))          throw new Error("ITerminalUser.setAccountNumbers: Account number is invalid (" + accountNumbers[i] + ")");
        while(accountNumbers[i].length < padding)          accountNumbers[i] = "0" + accountNumbers[i];      }
      accountNumbers = accountNumbers.trim();      }
  this.getAccountNumbers = function(){    return accountNumbers.slice(0);  }
  this.setUsername = function(value){    if(!value || !String(value).trim()){      username = null;      return;    }
    username=String(value).trim();  }
  this.getUsername = function(){    if(username && this.getAction() == IMPORTACTIONADDVALUE){      while(username.length < 8)        username += Math.floor(Math.random()*10);    }
    return username;  }
  this.getSuggestedUsername = function(){    if(firstName == null || lastName == null)      return (suggestedUsername = null);
    suggestedUsername = firstName.charAt(0) + lastName;    suggestedUsername = suggestedUsername.replace(/[\W\s]+/ig, "");           while(suggestedUsername.length < 8)      suggestedUsername += Math.floor(Math.random()*10);
    return suggestedUsername;  }
  this.setStatus = function(value){    if(!value || !String(value).trim()){      status = null;      this.setStatusText('');      return;    }
    var result = getBoolean(value);
    if(result){      status = ITERMINALUSERFORMSTATUSACTIVEVALUE;      this.setStatusText(ITERMINALUSERFORMSTATUSACTIVETEXT);    }    else{      status = ITERMINALUSERFORMSTATUSINACTIVEVALUE;      this.setStatusText(ITERMINALUSERFORMSTATUSINACTIVETEXT);    }  }
  this.getStatus = function(){    return status;  }
  this.setStatusText = function(value){    statusText = String(value);  }
  this.getStatusText = function(){    return statusText;  }
  this.setUserRole = function(value){    if(!value || !String(value).trim()){      userRole = null;      this.setUserRoleText('');      return;    }
    userRoleText = value = String(value);
    //Removes not alphabet characters (ex. commas)    value = value.match(/(\w*)/ig).toString().replace(/,+/ig, ' ').replace(/\s+and\s+/ig, ' ');     value = value.trim().toLowerCase();
    switch(value){      case 'read only':      case 'admin read only':      case 'admin read only access':         userRole = ITERMINALUSERFORMUSERROLEREADONLYVALUE;         this.setUserRoleText(ITERMINALUSERFORMUSERROLEREADONLYTEXT);      break;
      case 'store access':      case 'store':      case 'store regular access':         userRole = ITERMINALUSERFORMUSERROLESTOREACCESSVALUE;         this.setUserRoleText(ITERMINALUSERFORMUSERROLESTOREACCESSTEXT);      break;
      case 'manager access':      case 'manager full access':      case 'manager':      case 'manager full access no security restrictions':         userRole = ITERMINALUSERFORMUSERROLEMANAGERACCESSVALUE;         this.setUserRoleText(ITERMINALUSERFORMUSERROLEMANAGERACCESSTEXT);      break;          case 'na':      case 'not applicable':      case 'none':         userRole = null;         this.setUserRoleText('');      break;
      default:        throw new Error("ITerminalUser.setUserRole: User Role is invalid (" + value + ")");      break;    }  }
  this.getUserRole = function(){    return userRole;  }
  this.setUserRoleText = function(value){    userRoleText = String(value);  }
  this.getUserRoleText = function(){    return userRoleText;  }
  this.setRefundAccess = function(value){    if(!value || !String(value).trim()){      refundAccess = null;      this.setRefundText('');      return;    }
    refundText = value = String(value);
    //Removes not alphabet characters (ex. commas)    value = value.match(/(\w*)/ig).toString().replace(/,+/ig, ' ').replace(/\s+and\s+/ig, ' ');     value = value.trim().toLowerCase();
    switch(value){      case 'full refund':      case 'full refund access':         refundAccess = ITERMINALUSERFORMREFUNDFULLVALUE;         this.setRefundText(ITERMINALUSERFORMREFUNDFULLTEXT);      break;
      case 'quick refund':      case 'quick refund access':         refundAccess = ITERMINALUSERFORMREFUNDQUICKVALUE;         this.setRefundText(ITERMINALUSERFORMREFUNDQUICKTEXT);      break;
      case 'no refund':      case 'no refund access':         refundAccess = ITERMINALUSERFORMREFUNDNOVALUE;         this.setRefundText(ITERMINALUSERFORMREFUNDNOTEXT);      break;     case 'na':      case 'not applicable':      case 'none':         userRole = null;         this.setRefundText('');      break;
      default:        throw new Error("ITerminalUser.setRefundAccess: Refund Access is invalid (" + value + ")");      break;    }  }    this.getRefundAccess = function(){ return refundAccess;  }    this.setRefundText = function(value){ refundText = String(value);  }    this.getRefundText = function(value){    return refundText;  }    this.setVoidAccess = function(value){    if(!value || !String(value).trim()){      voidAccess = null;      return;    } voidAccess = getBoolean(value); }        this.getVoidAccess = function(value){ return voidAccess;  }  
    var getBoolean = function(value){    var result = null;
    value = String(value).trim().toLowerCase();
    switch(value){      case 'true':      case 'yes':      case 'enable':      case 'active':        result = true;      break;
      case 'false':      case 'no':      case 'disable':      case 'inactive':        result = false;      break;       default:        result = null;      break;    }     return result;  }
  this.setMessage = function(value){    message += String(value) + "\n";  }
  this.getMessage = function(){    return message;  }
  this.toString = function(){    return  '"' + username + '",'          + '"' + accountNumbers.toString().replace(",", ", ") + '",'          + '"' + action + ' ",'          + '"' + firstName + ' ",'          + '"' + lastName + ' ",'          + '"' + emailAddress + ' ",'          + '"' + phoneNumber + ' ",'          + '"' + userRoleText + ' ",'          + '"' + contactLevelText + ' ",'          + '"' + statusText + ' "'    + '"' + refundText + ' ",'    + '"' + voidAccess + ' ",';  }}//EOC
var addEventListener = (function(){  if(document.addEventListener){    return function(element, event, handler, useCapture){      element.addEventListener(event, handler, useCapture);    };  }  else if(document.attachEvent){    return function(element, event, handler, useCapture){      element.attachEvent("on" + event, handler);    };  }  else    throw new Error("addEventListener: No methods supported.");}());
Array.prototype.trim = function(){
  var beginIndex = 0;  var endIndex = this.length;
  for(var i=0; i<this.length; i++){    if(this[i] != ''){      beginIndex = i;      break;    }  }
  for(var i=this.length -1; i>-1; i--){    if(this[i] != ''){      endIndex = i;      break;    }  }
  return this.splice(beginIndex, endIndex + 1);};
//MAIN FUNCTION
try{  if(configUIImport)    configUIImport.reloadUI();  else    var configUIImport = new UserImportCtrl();}catch(e){  alert("ConfigUI Import could not be loaded\n\nReason:\n" + (e.description  || e));}
