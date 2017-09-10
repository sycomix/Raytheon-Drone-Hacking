.class public Lcom/google/gdata/data/extensions/ContactEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "ContactEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/g/2005#contact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/extensions/ContactEntry;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTACT_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final CONTACT_KIND:Ljava/lang/String; = "http://schemas.google.com/g/2005#contact"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/g/2005#contact"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/ContactEntry;->CONTACT_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/ContactEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/ContactEntry;->CONTACT_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/ContactEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/ContactEntry;->CONTACT_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method


# virtual methods
.method public addEmailAddress(Lcom/google/gdata/data/extensions/Email;)V
    .locals 1
    .param p1, "email"    # Lcom/google/gdata/data/extensions/Email;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/ContactEntry;->getEmailAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public addImAddress(Lcom/google/gdata/data/extensions/Im;)V
    .locals 1
    .param p1, "im"    # Lcom/google/gdata/data/extensions/Im;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/ContactEntry;->getImAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public addLocation(Lcom/google/gdata/data/extensions/GeoPt;)V
    .locals 1
    .param p1, "geoPt"    # Lcom/google/gdata/data/extensions/GeoPt;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/ContactEntry;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public addPhoneNumber(Lcom/google/gdata/data/extensions/PhoneNumber;)V
    .locals 1
    .param p1, "phoneNumber"    # Lcom/google/gdata/data/extensions/PhoneNumber;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/ContactEntry;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public addPostalAddress(Lcom/google/gdata/data/extensions/PostalAddress;)V
    .locals 1
    .param p1, "postalAddress"    # Lcom/google/gdata/data/extensions/PostalAddress;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/ContactEntry;->getPostalAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v2, 0x0

    .line 75
    const-class v0, Lcom/google/gdata/data/extensions/ContactEntry;

    invoke-static {}, Lcom/google/gdata/data/extensions/Email;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 76
    const-class v0, Lcom/google/gdata/data/extensions/ContactEntry;

    const/4 v1, 0x1

    invoke-static {v2, v1}, Lcom/google/gdata/data/extensions/Im;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 78
    const-class v0, Lcom/google/gdata/data/extensions/ContactEntry;

    invoke-static {}, Lcom/google/gdata/data/extensions/PhoneNumber;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 79
    const-class v0, Lcom/google/gdata/data/extensions/ContactEntry;

    invoke-static {}, Lcom/google/gdata/data/extensions/PostalAddress;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 81
    const-class v0, Lcom/google/gdata/data/extensions/ContactEntry;

    invoke-static {v2, v2}, Lcom/google/gdata/data/extensions/Organization;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 83
    const-class v0, Lcom/google/gdata/data/extensions/ContactEntry;

    invoke-static {}, Lcom/google/gdata/data/extensions/GeoPt;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 84
    const-class v0, Lcom/google/gdata/data/extensions/ContactEntry;

    const-class v1, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 85
    return-void
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
    .line 88
    const-class v0, Lcom/google/gdata/data/extensions/Email;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/ContactEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

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
    .line 96
    const-class v0, Lcom/google/gdata/data/extensions/Im;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/ContactEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/GeoPt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const-class v0, Lcom/google/gdata/data/extensions/GeoPt;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/ContactEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOrganization()Lcom/google/gdata/data/extensions/Organization;
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/google/gdata/data/extensions/Organization;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/ContactEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Organization;

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
    .line 104
    const-class v0, Lcom/google/gdata/data/extensions/PhoneNumber;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/ContactEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

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
    .line 112
    const-class v0, Lcom/google/gdata/data/extensions/PostalAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/ContactEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 140
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/ContactEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeleted()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/Deleted;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/ContactEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/ContactEntry;->setCanEdit(Z)V

    .line 137
    return-void
.end method

.method public setOrganization(Lcom/google/gdata/data/extensions/Organization;)V
    .locals 0
    .param p1, "org"    # Lcom/google/gdata/data/extensions/Organization;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/ContactEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 124
    return-void
.end method
