.class public Lcom/google/gdata/data/docs/AdditionalRoleSet;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "AdditionalRoleSet.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "additionalRoleSet"
    nsAlias = "docs"
    nsUri = "http://schemas.google.com/docs/2007"
.end annotation


# static fields
.field private static final PRIMARYROLE:Ljava/lang/String; = "primaryRole"

.field static final XML_NAME:Ljava/lang/String; = "additionalRoleSet"


# instance fields
.field private primaryRole:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/docs/AdditionalRoleSet;->primaryRole:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "primaryRole"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/docs/AdditionalRoleSet;->primaryRole:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AdditionalRoleSet;->setPrimaryRole(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AdditionalRoleSet;->setImmutable(Z)V

    .line 66
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 151
    const-class v1, Lcom/google/gdata/data/docs/AdditionalRoleSet;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 153
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 154
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 155
    return-object v0
.end method


# virtual methods
.method public addAdditionalRole(Lcom/google/gdata/data/acl/AdditionalRole;)V
    .locals 1
    .param p1, "additionalRole"    # Lcom/google/gdata/data/acl/AdditionalRole;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/AdditionalRoleSet;->getAdditionalRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 166
    const-string v0, "primaryRole"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/AdditionalRoleSet;->primaryRole:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x0

    .line 70
    const-class v0, Lcom/google/gdata/data/docs/AdditionalRoleSet;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    const-class v7, Lcom/google/gdata/data/docs/AdditionalRoleSet;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/acl/AdditionalRole;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gAcl"

    const-string v5, "http://schemas.google.com/acl/2007"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "additionalRole"

    const/4 v5, 0x1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getAdditionalRoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/acl/AdditionalRole;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const-class v0, Lcom/google/gdata/data/acl/AdditionalRole;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AdditionalRoleSet;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gdata/data/docs/AdditionalRoleSet;->primaryRole:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdditionalRoles()Z
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/google/gdata/data/acl/AdditionalRole;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AdditionalRoleSet;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPrimaryRole()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/AdditionalRoleSet;->getPrimaryRole()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 160
    const-string v0, "primaryRole"

    iget-object v1, p0, Lcom/google/gdata/data/docs/AdditionalRoleSet;->primaryRole:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public setPrimaryRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryRole"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/AdditionalRoleSet;->throwExceptionIfImmutable()V

    .line 122
    iput-object p1, p0, Lcom/google/gdata/data/docs/AdditionalRoleSet;->primaryRole:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{AdditionalRoleSet primaryRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/AdditionalRoleSet;->primaryRole:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/gdata/data/docs/AdditionalRoleSet;->primaryRole:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "primaryRole"

    invoke-static {v0}, Lcom/google/gdata/data/docs/AdditionalRoleSet;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method
