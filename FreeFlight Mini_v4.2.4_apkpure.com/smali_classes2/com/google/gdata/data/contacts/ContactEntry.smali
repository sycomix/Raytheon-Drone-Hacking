.class public Lcom/google/gdata/data/contacts/ContactEntry;
.super Lcom/google/gdata/data/contacts/BasePersonEntry;
.source "ContactEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/contact/2008#contact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/contacts/BasePersonEntry",
        "<",
        "Lcom/google/gdata/data/contacts/ContactEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/contact/2008#contact"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/contact/2008#contact"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/ContactEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/ContactEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/contacts/ContactEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
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
    .line 64
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 65
    return-void
.end method


# virtual methods
.method public addGroupMembershipInfo(Lcom/google/gdata/data/contacts/GroupMembershipInfo;)V
    .locals 1
    .param p1, "groupMembershipInfo"    # Lcom/google/gdata/data/contacts/GroupMembershipInfo;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/ContactEntry;->getGroupMembershipInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x0

    .line 69
    const-class v0, Lcom/google/gdata/data/contacts/ContactEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/contacts/BasePersonEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 73
    const-class v7, Lcom/google/gdata/data/contacts/ContactEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/Deleted;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "deleted"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 76
    const-class v0, Lcom/google/gdata/data/contacts/ContactEntry;

    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 78
    const-class v0, Lcom/google/gdata/data/contacts/ContactEntry;

    const-class v1, Lcom/google/gdata/data/contacts/YomiName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getDeleted()Lcom/google/gdata/data/extensions/Deleted;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Deleted;

    return-object v0
.end method

.method public getGroupMembershipInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/contacts/GroupMembershipInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const-class v0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getYomiName()Lcom/google/gdata/data/contacts/YomiName;
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/google/gdata/data/contacts/YomiName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/YomiName;

    return-object v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGroupMembershipInfos()Z
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasYomiName()Z
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/google/gdata/data/contacts/YomiName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setDeleted(Lcom/google/gdata/data/extensions/Deleted;)V
    .locals 1
    .param p1, "deleted"    # Lcom/google/gdata/data/extensions/Deleted;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactEntry;->removeExtension(Ljava/lang/Class;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/ContactEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setYomiName(Lcom/google/gdata/data/contacts/YomiName;)V
    .locals 1
    .param p1, "yomiName"    # Lcom/google/gdata/data/contacts/YomiName;

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    const-class v0, Lcom/google/gdata/data/contacts/YomiName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactEntry;->removeExtension(Ljava/lang/Class;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/ContactEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ContactEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/data/contacts/BasePersonEntry;->toString()Ljava/lang/String;

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
    .line 172
    return-void
.end method
