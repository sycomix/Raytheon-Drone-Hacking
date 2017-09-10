.class public abstract Lcom/google/gdata/data/contacts/BasePersonEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "BasePersonEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/data/contacts/BasePersonEntry",
        "<TE;>;>",
        "Lcom/google/gdata/data/BaseEntry",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 64
    return-void
.end method


# virtual methods
.method public addCalendarLink(Lcom/google/gdata/data/contacts/CalendarLink;)V
    .locals 1
    .param p1, "calendarLink"    # Lcom/google/gdata/data/contacts/CalendarLink;

    .prologue
    .line 355
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getCalendarLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method public addEmailAddress(Lcom/google/gdata/data/extensions/Email;)V
    .locals 1
    .param p1, "emailAddress"    # Lcom/google/gdata/data/extensions/Email;

    .prologue
    .line 413
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getEmailAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    return-void
.end method

.method public addEvent(Lcom/google/gdata/data/contacts/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/google/gdata/data/contacts/Event;

    .prologue
    .line 440
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method public addExtendedProperty(Lcom/google/gdata/data/extensions/ExtendedProperty;)V
    .locals 1
    .param p1, "extendedProperty"    # Lcom/google/gdata/data/extensions/ExtendedProperty;

    .prologue
    .line 467
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtendedProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method public addExternalId(Lcom/google/gdata/data/contacts/ExternalId;)V
    .locals 1
    .param p1, "externalId"    # Lcom/google/gdata/data/contacts/ExternalId;

    .prologue
    .line 494
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExternalIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method public addHobby(Lcom/google/gdata/data/contacts/Hobby;)V
    .locals 1
    .param p1, "hobby"    # Lcom/google/gdata/data/contacts/Hobby;

    .prologue
    .line 583
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getHobbies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method public addImAddress(Lcom/google/gdata/data/extensions/Im;)V
    .locals 1
    .param p1, "imAddress"    # Lcom/google/gdata/data/extensions/Im;

    .prologue
    .line 610
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getImAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    return-void
.end method

.method public addJot(Lcom/google/gdata/data/contacts/Jot;)V
    .locals 1
    .param p1, "jot"    # Lcom/google/gdata/data/contacts/Jot;

    .prologue
    .line 668
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getJots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    return-void
.end method

.method public addLanguage(Lcom/google/gdata/data/contacts/Language;)V
    .locals 1
    .param p1, "language"    # Lcom/google/gdata/data/contacts/Language;

    .prologue
    .line 695
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    return-void
.end method

.method public addOrganization(Lcom/google/gdata/data/extensions/Organization;)V
    .locals 1
    .param p1, "organization"    # Lcom/google/gdata/data/extensions/Organization;

    .prologue
    .line 877
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getOrganizations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    return-void
.end method

.method public addPhoneNumber(Lcom/google/gdata/data/extensions/PhoneNumber;)V
    .locals 1
    .param p1, "phoneNumber"    # Lcom/google/gdata/data/extensions/PhoneNumber;

    .prologue
    .line 904
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    return-void
.end method

.method public addPostalAddress(Lcom/google/gdata/data/extensions/PostalAddress;)V
    .locals 1
    .param p1, "postalAddress"    # Lcom/google/gdata/data/extensions/PostalAddress;

    .prologue
    .line 931
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getPostalAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    return-void
.end method

.method public addRelation(Lcom/google/gdata/data/contacts/Relation;)V
    .locals 1
    .param p1, "relation"    # Lcom/google/gdata/data/contacts/Relation;

    .prologue
    .line 989
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    return-void
.end method

.method public addStructuredPostalAddress(Lcom/google/gdata/data/extensions/StructuredPostalAddress;)V
    .locals 1
    .param p1, "structuredPostalAddress"    # Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    .prologue
    .line 1110
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getStructuredPostalAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    return-void
.end method

.method public addUserDefinedField(Lcom/google/gdata/data/contacts/UserDefinedField;)V
    .locals 1
    .param p1, "userDefinedField"    # Lcom/google/gdata/data/contacts/UserDefinedField;

    .prologue
    .line 1168
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getUserDefinedFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    return-void
.end method

.method public addWebsite(Lcom/google/gdata/data/contacts/Website;)V
    .locals 1
    .param p1, "website"    # Lcom/google/gdata/data/contacts/Website;

    .prologue
    .line 1195
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getWebsites()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 9
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 68
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 72
    const-class v7, Lcom/google/gdata/data/contacts/BasePersonEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchId;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "id"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 75
    const-class v7, Lcom/google/gdata/data/contacts/BasePersonEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchInterrupted;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "interrupted"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 79
    const-class v7, Lcom/google/gdata/data/contacts/BasePersonEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchOperation;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "operation"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 83
    const-class v7, Lcom/google/gdata/data/contacts/BasePersonEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchStatus;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 87
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/BillingInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 88
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/Birthday;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 89
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/contacts/CalendarLink;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 91
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/DirectoryServer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 92
    const-class v7, Lcom/google/gdata/data/contacts/BasePersonEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/Email;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "email"

    move v5, v8

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 95
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/contacts/Event;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 97
    new-instance v0, Lcom/google/gdata/data/contacts/Event;

    invoke-direct {v0}, Lcom/google/gdata/data/contacts/Event;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/contacts/Event;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 98
    const-class v7, Lcom/google/gdata/data/contacts/BasePersonEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/ExtendedProperty;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extendedProperty"

    move v5, v8

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 102
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/contacts/ExternalId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 104
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/FileAs;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 105
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/Gender;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 106
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/contacts/Hobby;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 108
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/extensions/Im;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 110
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/Initials;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 111
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/contacts/Jot;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 113
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/contacts/Language;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 115
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/MaidenName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 116
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/Mileage;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 117
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/extensions/Name;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 118
    new-instance v0, Lcom/google/gdata/data/extensions/Name;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/Name;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/Name;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 119
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/Nickname;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 120
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/Occupation;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 121
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/extensions/Organization;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 123
    new-instance v0, Lcom/google/gdata/data/extensions/Organization;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/Organization;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/Organization;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 124
    const-class v7, Lcom/google/gdata/data/contacts/BasePersonEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/PhoneNumber;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "phoneNumber"

    move v5, v8

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 128
    const-class v7, Lcom/google/gdata/data/contacts/BasePersonEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/PostalAddress;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "postalAddress"

    move v5, v8

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 132
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/Priority;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 133
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/contacts/Relation;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 135
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/Sensitivity;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 136
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/ShortName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 137
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/Status;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 138
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 140
    new-instance v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 141
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    const-class v1, Lcom/google/gdata/data/contacts/Subject;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 142
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/contacts/UserDefinedField;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 144
    const-class v0, Lcom/google/gdata/data/contacts/BasePersonEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/contacts/Website;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 146
    const-class v7, Lcom/google/gdata/data/contacts/BasePersonEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/Where;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "where"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 149
    new-instance v0, Lcom/google/gdata/data/extensions/Where;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/Where;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/Where;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0
.end method

.method public getBatchId()Lcom/google/gdata/data/batch/BatchId;
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchId;

    return-object v0
.end method

.method public getBatchInterrupted()Lcom/google/gdata/data/batch/BatchInterrupted;
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    return-object v0
.end method

.method public getBatchOperation()Lcom/google/gdata/data/batch/BatchOperation;
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchOperation;

    return-object v0
.end method

.method public getBatchStatus()Lcom/google/gdata/data/batch/BatchStatus;
    .locals 1

    .prologue
    .line 252
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchStatus;

    return-object v0
.end method

.method public getBillingInformation()Lcom/google/gdata/data/contacts/BillingInformation;
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/BillingInformation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/BillingInformation;

    return-object v0
.end method

.method public getBirthday()Lcom/google/gdata/data/contacts/Birthday;
    .locals 1

    .prologue
    .line 315
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Birthday;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Birthday;

    return-object v0
.end method

.method public getCalendarLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/contacts/CalendarLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/CalendarLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContactEditPhotoLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 1244
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-string v0, "http://schemas.google.com/contacts/2008/rel#edit-photo"

    const-string v1, "image/*"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getContactPhotoLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 1253
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-string v0, "http://schemas.google.com/contacts/2008/rel#photo"

    const-string v1, "image/*"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryServer()Lcom/google/gdata/data/contacts/DirectoryServer;
    .locals 1

    .prologue
    .line 373
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/DirectoryServer;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/DirectoryServer;

    return-object v0
.end method

.method public getEmailAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/Email;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Email;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/contacts/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Event;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/ExtendedProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/ExtendedProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExternalIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/contacts/ExternalId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/ExternalId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileAs()Lcom/google/gdata/data/contacts/FileAs;
    .locals 1

    .prologue
    .line 512
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/FileAs;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/FileAs;

    return-object v0
.end method

.method public getGender()Lcom/google/gdata/data/contacts/Gender;
    .locals 1

    .prologue
    .line 543
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Gender;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Gender;

    return-object v0
.end method

.method public getHobbies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/contacts/Hobby;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Hobby;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/Im;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Im;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInitials()Lcom/google/gdata/data/contacts/Initials;
    .locals 1

    .prologue
    .line 628
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Initials;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Initials;

    return-object v0
.end method

.method public getJots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/contacts/Jot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Jot;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/contacts/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Language;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaidenName()Lcom/google/gdata/data/contacts/MaidenName;
    .locals 1

    .prologue
    .line 713
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/MaidenName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/MaidenName;

    return-object v0
.end method

.method public getMileage()Lcom/google/gdata/data/contacts/Mileage;
    .locals 1

    .prologue
    .line 744
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Mileage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Mileage;

    return-object v0
.end method

.method public getName()Lcom/google/gdata/data/extensions/Name;
    .locals 1

    .prologue
    .line 775
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Name;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Name;

    return-object v0
.end method

.method public getNickname()Lcom/google/gdata/data/contacts/Nickname;
    .locals 1

    .prologue
    .line 806
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Nickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Nickname;

    return-object v0
.end method

.method public getOccupation()Lcom/google/gdata/data/contacts/Occupation;
    .locals 1

    .prologue
    .line 837
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Occupation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Occupation;

    return-object v0
.end method

.method public getOrganizations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/Organization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 868
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Organization;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/PhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 895
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/PhoneNumber;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPostalAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/PostalAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 922
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/PostalAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/google/gdata/data/contacts/Priority;
    .locals 1

    .prologue
    .line 949
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Priority;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Priority;

    return-object v0
.end method

.method public getRelations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/contacts/Relation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 980
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Relation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSensitivity()Lcom/google/gdata/data/contacts/Sensitivity;
    .locals 1

    .prologue
    .line 1007
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Sensitivity;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Sensitivity;

    return-object v0
.end method

.method public getShortName()Lcom/google/gdata/data/contacts/ShortName;
    .locals 1

    .prologue
    .line 1038
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/ShortName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/ShortName;

    return-object v0
.end method

.method public getStatus()Lcom/google/gdata/data/contacts/Status;
    .locals 1

    .prologue
    .line 1069
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Status;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Status;

    return-object v0
.end method

.method public getStructuredPostalAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/StructuredPostalAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1100
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lcom/google/gdata/data/contacts/Subject;
    .locals 1

    .prologue
    .line 1128
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Subject;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Subject;

    return-object v0
.end method

.method public getUserDefinedFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/contacts/UserDefinedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1159
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/UserDefinedField;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWebsites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/contacts/Website;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1186
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Website;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWhere()Lcom/google/gdata/data/extensions/Where;
    .locals 1

    .prologue
    .line 1213
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Where;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Where;

    return-object v0
.end method

.method public hasBatchId()Z
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchInterrupted()Z
    .locals 1

    .prologue
    .line 212
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchOperation()Z
    .locals 1

    .prologue
    .line 243
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchStatus()Z
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBillingInformation()Z
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/BillingInformation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBirthday()Z
    .locals 1

    .prologue
    .line 337
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Birthday;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCalendarLinks()Z
    .locals 1

    .prologue
    .line 364
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/CalendarLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDirectoryServer()Z
    .locals 1

    .prologue
    .line 395
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/DirectoryServer;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasEmailAddresses()Z
    .locals 1

    .prologue
    .line 422
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Email;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasEvents()Z
    .locals 1

    .prologue
    .line 449
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Event;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasExtendedProperties()Z
    .locals 1

    .prologue
    .line 476
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/ExtendedProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasExternalIds()Z
    .locals 1

    .prologue
    .line 503
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/ExternalId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasFileAs()Z
    .locals 1

    .prologue
    .line 534
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/FileAs;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGender()Z
    .locals 1

    .prologue
    .line 565
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Gender;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasHobbies()Z
    .locals 1

    .prologue
    .line 592
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Hobby;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasImAddresses()Z
    .locals 1

    .prologue
    .line 619
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Im;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasInitials()Z
    .locals 1

    .prologue
    .line 650
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Initials;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasJots()Z
    .locals 1

    .prologue
    .line 677
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Jot;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasLanguages()Z
    .locals 1

    .prologue
    .line 704
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Language;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasMaidenName()Z
    .locals 1

    .prologue
    .line 735
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/MaidenName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasMileage()Z
    .locals 1

    .prologue
    .line 766
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Mileage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 797
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Name;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNickname()Z
    .locals 1

    .prologue
    .line 828
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Nickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasOccupation()Z
    .locals 1

    .prologue
    .line 859
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Occupation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasOrganizations()Z
    .locals 1

    .prologue
    .line 886
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Organization;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumbers()Z
    .locals 1

    .prologue
    .line 913
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/PhoneNumber;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPostalAddresses()Z
    .locals 1

    .prologue
    .line 940
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/PostalAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 971
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Priority;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasRelations()Z
    .locals 1

    .prologue
    .line 998
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Relation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSensitivity()Z
    .locals 1

    .prologue
    .line 1029
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Sensitivity;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasShortName()Z
    .locals 1

    .prologue
    .line 1060
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/ShortName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 1091
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Status;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasStructuredPostalAddresses()Z
    .locals 1

    .prologue
    .line 1119
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 1150
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Subject;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasUserDefinedFields()Z
    .locals 1

    .prologue
    .line 1177
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/UserDefinedField;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasWebsites()Z
    .locals 1

    .prologue
    .line 1204
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/contacts/Website;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasWhere()Z
    .locals 1

    .prologue
    .line 1235
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Where;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setBatchId(Lcom/google/gdata/data/batch/BatchId;)V
    .locals 1
    .param p1, "batchId"    # Lcom/google/gdata/data/batch/BatchId;

    .prologue
    .line 167
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 168
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchInterrupted(Lcom/google/gdata/data/batch/BatchInterrupted;)V
    .locals 1
    .param p1, "batchInterrupted"    # Lcom/google/gdata/data/batch/BatchInterrupted;

    .prologue
    .line 199
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 200
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchOperation(Lcom/google/gdata/data/batch/BatchOperation;)V
    .locals 1
    .param p1, "batchOperation"    # Lcom/google/gdata/data/batch/BatchOperation;

    .prologue
    .line 230
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 231
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchStatus(Lcom/google/gdata/data/batch/BatchStatus;)V
    .locals 1
    .param p1, "batchStatus"    # Lcom/google/gdata/data/batch/BatchStatus;

    .prologue
    .line 262
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 263
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBillingInformation(Lcom/google/gdata/data/contacts/BillingInformation;)V
    .locals 1
    .param p1, "billingInformation"    # Lcom/google/gdata/data/contacts/BillingInformation;

    .prologue
    .line 293
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 294
    const-class v0, Lcom/google/gdata/data/contacts/BillingInformation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBirthday(Lcom/google/gdata/data/contacts/Birthday;)V
    .locals 1
    .param p1, "birthday"    # Lcom/google/gdata/data/contacts/Birthday;

    .prologue
    .line 324
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 325
    const-class v0, Lcom/google/gdata/data/contacts/Birthday;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDirectoryServer(Lcom/google/gdata/data/contacts/DirectoryServer;)V
    .locals 1
    .param p1, "directoryServer"    # Lcom/google/gdata/data/contacts/DirectoryServer;

    .prologue
    .line 382
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 383
    const-class v0, Lcom/google/gdata/data/contacts/DirectoryServer;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setFileAs(Lcom/google/gdata/data/contacts/FileAs;)V
    .locals 1
    .param p1, "fileAs"    # Lcom/google/gdata/data/contacts/FileAs;

    .prologue
    .line 521
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 522
    const-class v0, Lcom/google/gdata/data/contacts/FileAs;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGender(Lcom/google/gdata/data/contacts/Gender;)V
    .locals 1
    .param p1, "gender"    # Lcom/google/gdata/data/contacts/Gender;

    .prologue
    .line 552
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 553
    const-class v0, Lcom/google/gdata/data/contacts/Gender;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setInitials(Lcom/google/gdata/data/contacts/Initials;)V
    .locals 1
    .param p1, "initials"    # Lcom/google/gdata/data/contacts/Initials;

    .prologue
    .line 637
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 638
    const-class v0, Lcom/google/gdata/data/contacts/Initials;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setMaidenName(Lcom/google/gdata/data/contacts/MaidenName;)V
    .locals 1
    .param p1, "maidenName"    # Lcom/google/gdata/data/contacts/MaidenName;

    .prologue
    .line 722
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 723
    const-class v0, Lcom/google/gdata/data/contacts/MaidenName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setMileage(Lcom/google/gdata/data/contacts/Mileage;)V
    .locals 1
    .param p1, "mileage"    # Lcom/google/gdata/data/contacts/Mileage;

    .prologue
    .line 753
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 754
    const-class v0, Lcom/google/gdata/data/contacts/Mileage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 758
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setName(Lcom/google/gdata/data/extensions/Name;)V
    .locals 1
    .param p1, "name"    # Lcom/google/gdata/data/extensions/Name;

    .prologue
    .line 784
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 785
    const-class v0, Lcom/google/gdata/data/extensions/Name;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 789
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setNickname(Lcom/google/gdata/data/contacts/Nickname;)V
    .locals 1
    .param p1, "nickname"    # Lcom/google/gdata/data/contacts/Nickname;

    .prologue
    .line 815
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 816
    const-class v0, Lcom/google/gdata/data/contacts/Nickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 820
    :goto_0
    return-void

    .line 818
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setOccupation(Lcom/google/gdata/data/contacts/Occupation;)V
    .locals 1
    .param p1, "occupation"    # Lcom/google/gdata/data/contacts/Occupation;

    .prologue
    .line 846
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 847
    const-class v0, Lcom/google/gdata/data/contacts/Occupation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPriority(Lcom/google/gdata/data/contacts/Priority;)V
    .locals 1
    .param p1, "priority"    # Lcom/google/gdata/data/contacts/Priority;

    .prologue
    .line 958
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 959
    const-class v0, Lcom/google/gdata/data/contacts/Priority;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 963
    :goto_0
    return-void

    .line 961
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSensitivity(Lcom/google/gdata/data/contacts/Sensitivity;)V
    .locals 1
    .param p1, "sensitivity"    # Lcom/google/gdata/data/contacts/Sensitivity;

    .prologue
    .line 1016
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 1017
    const-class v0, Lcom/google/gdata/data/contacts/Sensitivity;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 1021
    :goto_0
    return-void

    .line 1019
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setShortName(Lcom/google/gdata/data/contacts/ShortName;)V
    .locals 1
    .param p1, "shortName"    # Lcom/google/gdata/data/contacts/ShortName;

    .prologue
    .line 1047
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 1048
    const-class v0, Lcom/google/gdata/data/contacts/ShortName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 1052
    :goto_0
    return-void

    .line 1050
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStatus(Lcom/google/gdata/data/contacts/Status;)V
    .locals 1
    .param p1, "status"    # Lcom/google/gdata/data/contacts/Status;

    .prologue
    .line 1078
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 1079
    const-class v0, Lcom/google/gdata/data/contacts/Status;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 1083
    :goto_0
    return-void

    .line 1081
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSubject(Lcom/google/gdata/data/contacts/Subject;)V
    .locals 1
    .param p1, "subject"    # Lcom/google/gdata/data/contacts/Subject;

    .prologue
    .line 1137
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 1138
    const-class v0, Lcom/google/gdata/data/contacts/Subject;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 1142
    :goto_0
    return-void

    .line 1140
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setWhere(Lcom/google/gdata/data/extensions/Where;)V
    .locals 1
    .param p1, "where"    # Lcom/google/gdata/data/extensions/Where;

    .prologue
    .line 1222
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    if-nez p1, :cond_0

    .line 1223
    const-class v0, Lcom/google/gdata/data/extensions/Where;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->removeExtension(Ljava/lang/Class;)V

    .line 1227
    :goto_0
    return-void

    .line 1225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1262
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{BasePersonEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 1258
    .local p0, "this":Lcom/google/gdata/data/contacts/BasePersonEntry;, "Lcom/google/gdata/data/contacts/BasePersonEntry<TE;>;"
    return-void
.end method
