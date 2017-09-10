.class public Lcom/google/gdata/data/extensions/Organization;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Organization.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "organization"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/Organization$Rel;
    }
.end annotation


# static fields
.field private static final LABEL:Ljava/lang/String; = "label"

.field private static final PRIMARY:Ljava/lang/String; = "primary"

.field private static final REL:Ljava/lang/String; = "rel"

.field static final XML_NAME:Ljava/lang/String; = "organization"


# instance fields
.field private label:Ljava/lang/String;

.field private primary:Ljava/lang/Boolean;

.field private rel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->label:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->primary:Ljava/lang/Boolean;

    .line 58
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->rel:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "primary"    # Ljava/lang/Boolean;
    .param p3, "rel"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->label:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->primary:Ljava/lang/Boolean;

    .line 58
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->rel:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Organization;->setLabel(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/extensions/Organization;->setPrimary(Ljava/lang/Boolean;)V

    .line 89
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/extensions/Organization;->setRel(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->setImmutable(Z)V

    .line 91
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 395
    const-class v1, Lcom/google/gdata/data/extensions/Organization;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 397
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 398
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 399
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 412
    const-string v0, "label"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->label:Ljava/lang/String;

    .line 413
    const-string v0, "primary"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->primary:Ljava/lang/Boolean;

    .line 414
    const-string v0, "rel"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->rel:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x0

    .line 95
    const-class v0, Lcom/google/gdata/data/extensions/Organization;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 98
    :cond_0
    const-class v0, Lcom/google/gdata/data/extensions/Organization;

    const-class v1, Lcom/google/gdata/data/extensions/OrgDepartment;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 99
    const-class v0, Lcom/google/gdata/data/extensions/Organization;

    const-class v1, Lcom/google/gdata/data/extensions/OrgJobDescription;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 100
    const-class v0, Lcom/google/gdata/data/extensions/Organization;

    const-class v1, Lcom/google/gdata/data/extensions/OrgName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 101
    const-class v0, Lcom/google/gdata/data/extensions/Organization;

    const-class v1, Lcom/google/gdata/data/extensions/OrgSymbol;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 102
    const-class v0, Lcom/google/gdata/data/extensions/Organization;

    const-class v1, Lcom/google/gdata/data/extensions/OrgTitle;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 103
    const-class v7, Lcom/google/gdata/data/extensions/Organization;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/Where;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "where"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 106
    new-instance v0, Lcom/google/gdata/data/extensions/Where;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/Where;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/Where;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgDepartment()Lcom/google/gdata/data/extensions/OrgDepartment;
    .locals 1

    .prologue
    .line 143
    const-class v0, Lcom/google/gdata/data/extensions/OrgDepartment;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/OrgDepartment;

    return-object v0
.end method

.method public getOrgJobDescription()Lcom/google/gdata/data/extensions/OrgJobDescription;
    .locals 1

    .prologue
    .line 175
    const-class v0, Lcom/google/gdata/data/extensions/OrgJobDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/OrgJobDescription;

    return-object v0
.end method

.method public getOrgName()Lcom/google/gdata/data/extensions/OrgName;
    .locals 1

    .prologue
    .line 206
    const-class v0, Lcom/google/gdata/data/extensions/OrgName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/OrgName;

    return-object v0
.end method

.method public getOrgSymbol()Lcom/google/gdata/data/extensions/OrgSymbol;
    .locals 1

    .prologue
    .line 237
    const-class v0, Lcom/google/gdata/data/extensions/OrgSymbol;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/OrgSymbol;

    return-object v0
.end method

.method public getOrgTitle()Lcom/google/gdata/data/extensions/OrgTitle;
    .locals 1

    .prologue
    .line 268
    const-class v0, Lcom/google/gdata/data/extensions/OrgTitle;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/OrgTitle;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Organization;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getWhere()Lcom/google/gdata/data/extensions/Where;
    .locals 1

    .prologue
    .line 356
    const-class v0, Lcom/google/gdata/data/extensions/Where;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Where;

    return-object v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Organization;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOrgDepartment()Z
    .locals 1

    .prologue
    .line 166
    const-class v0, Lcom/google/gdata/data/extensions/OrgDepartment;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasOrgJobDescription()Z
    .locals 1

    .prologue
    .line 197
    const-class v0, Lcom/google/gdata/data/extensions/OrgJobDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasOrgName()Z
    .locals 1

    .prologue
    .line 228
    const-class v0, Lcom/google/gdata/data/extensions/OrgName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasOrgSymbol()Z
    .locals 1

    .prologue
    .line 259
    const-class v0, Lcom/google/gdata/data/extensions/OrgSymbol;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasOrgTitle()Z
    .locals 1

    .prologue
    .line 290
    const-class v0, Lcom/google/gdata/data/extensions/OrgTitle;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPrimary()Z
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Organization;->getPrimary()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Organization;->getRel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWhere()Z
    .locals 1

    .prologue
    .line 378
    const-class v0, Lcom/google/gdata/data/extensions/Where;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 404
    const-string v0, "label"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Organization;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v0, "primary"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Organization;->primary:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    const-string v0, "rel"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Organization;->rel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Organization;->throwExceptionIfImmutable()V

    .line 125
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Organization;->label:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setOrgDepartment(Lcom/google/gdata/data/extensions/OrgDepartment;)V
    .locals 1
    .param p1, "orgDepartment"    # Lcom/google/gdata/data/extensions/OrgDepartment;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const-class v0, Lcom/google/gdata/data/extensions/OrgDepartment;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->removeExtension(Ljava/lang/Class;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Organization;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setOrgJobDescription(Lcom/google/gdata/data/extensions/OrgJobDescription;)V
    .locals 1
    .param p1, "orgJobDescription"    # Lcom/google/gdata/data/extensions/OrgJobDescription;

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const-class v0, Lcom/google/gdata/data/extensions/OrgJobDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->removeExtension(Ljava/lang/Class;)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Organization;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setOrgName(Lcom/google/gdata/data/extensions/OrgName;)V
    .locals 1
    .param p1, "orgName"    # Lcom/google/gdata/data/extensions/OrgName;

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    const-class v0, Lcom/google/gdata/data/extensions/OrgName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->removeExtension(Ljava/lang/Class;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Organization;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setOrgSymbol(Lcom/google/gdata/data/extensions/OrgSymbol;)V
    .locals 1
    .param p1, "orgSymbol"    # Lcom/google/gdata/data/extensions/OrgSymbol;

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    const-class v0, Lcom/google/gdata/data/extensions/OrgSymbol;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->removeExtension(Ljava/lang/Class;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Organization;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setOrgTitle(Lcom/google/gdata/data/extensions/OrgTitle;)V
    .locals 1
    .param p1, "orgTitle"    # Lcom/google/gdata/data/extensions/OrgTitle;

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    const-class v0, Lcom/google/gdata/data/extensions/OrgTitle;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->removeExtension(Ljava/lang/Class;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Organization;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Organization;->throwExceptionIfImmutable()V

    .line 310
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Organization;->primary:Ljava/lang/Boolean;

    .line 311
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Organization;->throwExceptionIfImmutable()V

    .line 338
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Organization;->rel:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setWhere(Lcom/google/gdata/data/extensions/Where;)V
    .locals 1
    .param p1, "where"    # Lcom/google/gdata/data/extensions/Where;

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 366
    const-class v0, Lcom/google/gdata/data/extensions/Where;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Organization;->removeExtension(Ljava/lang/Class;)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Organization;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Organization label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Organization;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Organization;->primary:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Organization;->rel:Ljava/lang/String;

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
    .locals 0

    .prologue
    .line 383
    return-void
.end method
