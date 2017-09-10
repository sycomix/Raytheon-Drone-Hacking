.class public Lcom/google/gdata/data/acl/AclWithKey;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "AclWithKey.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "withKey"
    nsAlias = "gAcl"
    nsUri = "http://schemas.google.com/acl/2007"
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "key"

.field static final XML_NAME:Ljava/lang/String; = "withKey"


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/acl/AclWithKey;->key:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/data/acl/AclRole;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "role"    # Lcom/google/gdata/data/acl/AclRole;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/acl/AclWithKey;->key:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/acl/AclWithKey;->setKey(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/acl/AclWithKey;->setRole(Lcom/google/gdata/data/acl/AclRole;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/acl/AclWithKey;->setImmutable(Z)V

    .line 66
    return-void
.end method


# virtual methods
.method public addAdditionalRole(Lcom/google/gdata/data/acl/AdditionalRole;)V
    .locals 0
    .param p1, "role"    # Lcom/google/gdata/data/acl/AdditionalRole;

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/acl/AclWithKey;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 146
    return-void
.end method

.method public clearAdditionalRoles()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/gdata/data/acl/AclWithKey;->getAdditionalRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
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
    .line 162
    const-string v0, "key"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/acl/AclWithKey;->key:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 70
    const-class v0, Lcom/google/gdata/data/acl/AclWithKey;

    const-class v1, Lcom/google/gdata/data/acl/AclRole;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 71
    const-class v0, Lcom/google/gdata/data/acl/AclWithKey;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/gdata/data/acl/AdditionalRole;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 72
    return-void
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
    .line 138
    const-class v0, Lcom/google/gdata/data/acl/AdditionalRole;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/acl/AclWithKey;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/gdata/data/acl/AclWithKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Lcom/google/gdata/data/acl/AclRole;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/google/gdata/data/acl/AclRole;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/acl/AclWithKey;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/acl/AclRole;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/gdata/data/acl/AclWithKey;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRole()Z
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/google/gdata/data/acl/AclRole;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/acl/AclWithKey;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 157
    const-string v0, "key"

    iget-object v1, p0, Lcom/google/gdata/data/acl/AclWithKey;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/gdata/data/acl/AclWithKey;->throwExceptionIfImmutable()V

    .line 90
    iput-object p1, p0, Lcom/google/gdata/data/acl/AclWithKey;->key:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setRole(Lcom/google/gdata/data/acl/AclRole;)V
    .locals 1
    .param p1, "role"    # Lcom/google/gdata/data/acl/AclRole;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/gdata/data/acl/AclWithKey;->throwExceptionIfImmutable()V

    .line 118
    if-nez p1, :cond_0

    .line 119
    const-class v0, Lcom/google/gdata/data/acl/AclRole;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/acl/AclWithKey;->removeExtension(Ljava/lang/Class;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/acl/AclWithKey;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{AclWithKey key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/acl/AclWithKey;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
