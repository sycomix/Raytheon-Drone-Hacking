.class public Lcom/google/gdata/data/extensions/Name;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Name.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "name"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 43
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 258
    const-class v1, Lcom/google/gdata/data/extensions/Name;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 260
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 261
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 262
    return-object v0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 47
    const-class v0, Lcom/google/gdata/data/extensions/Name;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    const-class v0, Lcom/google/gdata/data/extensions/Name;

    const-class v1, Lcom/google/gdata/data/extensions/AdditionalName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 51
    const-class v0, Lcom/google/gdata/data/extensions/Name;

    const-class v1, Lcom/google/gdata/data/extensions/FamilyName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 52
    const-class v0, Lcom/google/gdata/data/extensions/Name;

    const-class v1, Lcom/google/gdata/data/extensions/FullName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/extensions/Name;

    const-class v1, Lcom/google/gdata/data/extensions/GivenName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/google/gdata/data/extensions/Name;

    const-class v1, Lcom/google/gdata/data/extensions/NamePrefix;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/extensions/Name;

    const-class v1, Lcom/google/gdata/data/extensions/NameSuffix;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getAdditionalName()Lcom/google/gdata/data/extensions/AdditionalName;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/google/gdata/data/extensions/AdditionalName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/AdditionalName;

    return-object v0
.end method

.method public getFamilyName()Lcom/google/gdata/data/extensions/FamilyName;
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/google/gdata/data/extensions/FamilyName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/FamilyName;

    return-object v0
.end method

.method public getFullName()Lcom/google/gdata/data/extensions/FullName;
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/google/gdata/data/extensions/FullName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/FullName;

    return-object v0
.end method

.method public getGivenName()Lcom/google/gdata/data/extensions/GivenName;
    .locals 1

    .prologue
    .line 157
    const-class v0, Lcom/google/gdata/data/extensions/GivenName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/GivenName;

    return-object v0
.end method

.method public getNamePrefix()Lcom/google/gdata/data/extensions/NamePrefix;
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/google/gdata/data/extensions/NamePrefix;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/NamePrefix;

    return-object v0
.end method

.method public getNameSuffix()Lcom/google/gdata/data/extensions/NameSuffix;
    .locals 1

    .prologue
    .line 219
    const-class v0, Lcom/google/gdata/data/extensions/NameSuffix;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/NameSuffix;

    return-object v0
.end method

.method public hasAdditionalName()Z
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/google/gdata/data/extensions/AdditionalName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasFamilyName()Z
    .locals 1

    .prologue
    .line 117
    const-class v0, Lcom/google/gdata/data/extensions/FamilyName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasFullName()Z
    .locals 1

    .prologue
    .line 148
    const-class v0, Lcom/google/gdata/data/extensions/FullName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGivenName()Z
    .locals 1

    .prologue
    .line 179
    const-class v0, Lcom/google/gdata/data/extensions/GivenName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNamePrefix()Z
    .locals 1

    .prologue
    .line 210
    const-class v0, Lcom/google/gdata/data/extensions/NamePrefix;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNameSuffix()Z
    .locals 1

    .prologue
    .line 241
    const-class v0, Lcom/google/gdata/data/extensions/NameSuffix;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setAdditionalName(Lcom/google/gdata/data/extensions/AdditionalName;)V
    .locals 1
    .param p1, "additionalName"    # Lcom/google/gdata/data/extensions/AdditionalName;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const-class v0, Lcom/google/gdata/data/extensions/AdditionalName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->removeExtension(Ljava/lang/Class;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Name;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setFamilyName(Lcom/google/gdata/data/extensions/FamilyName;)V
    .locals 1
    .param p1, "familyName"    # Lcom/google/gdata/data/extensions/FamilyName;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    const-class v0, Lcom/google/gdata/data/extensions/FamilyName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->removeExtension(Ljava/lang/Class;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Name;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setFullName(Lcom/google/gdata/data/extensions/FullName;)V
    .locals 1
    .param p1, "fullName"    # Lcom/google/gdata/data/extensions/FullName;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    const-class v0, Lcom/google/gdata/data/extensions/FullName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->removeExtension(Ljava/lang/Class;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Name;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGivenName(Lcom/google/gdata/data/extensions/GivenName;)V
    .locals 1
    .param p1, "givenName"    # Lcom/google/gdata/data/extensions/GivenName;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    const-class v0, Lcom/google/gdata/data/extensions/GivenName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->removeExtension(Ljava/lang/Class;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Name;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setNamePrefix(Lcom/google/gdata/data/extensions/NamePrefix;)V
    .locals 1
    .param p1, "namePrefix"    # Lcom/google/gdata/data/extensions/NamePrefix;

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const-class v0, Lcom/google/gdata/data/extensions/NamePrefix;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->removeExtension(Ljava/lang/Class;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Name;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setNameSuffix(Lcom/google/gdata/data/extensions/NameSuffix;)V
    .locals 1
    .param p1, "nameSuffix"    # Lcom/google/gdata/data/extensions/NameSuffix;

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    const-class v0, Lcom/google/gdata/data/extensions/NameSuffix;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Name;->removeExtension(Ljava/lang/Class;)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Name;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const-string/jumbo v0, "{Name}"

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method
