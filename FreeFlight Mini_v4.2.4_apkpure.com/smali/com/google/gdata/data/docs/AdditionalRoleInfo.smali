.class public Lcom/google/gdata/data/docs/AdditionalRoleInfo;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "AdditionalRoleInfo.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "additionalRoleInfo"
    nsAlias = "docs"
    nsUri = "http://schemas.google.com/docs/2007"
.end annotation


# static fields
.field private static final KIND:Ljava/lang/String; = "kind"

.field static final XML_NAME:Ljava/lang/String; = "additionalRoleInfo"


# instance fields
.field private kind:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->kind:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->kind:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->setKind(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->setImmutable(Z)V

    .line 64
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 148
    const-class v1, Lcom/google/gdata/data/docs/AdditionalRoleInfo;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 150
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 151
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 152
    return-object v0
.end method


# virtual methods
.method public addAdditionalRoleSet(Lcom/google/gdata/data/docs/AdditionalRoleSet;)V
    .locals 1
    .param p1, "additionalRoleSet"    # Lcom/google/gdata/data/docs/AdditionalRoleSet;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->getAdditionalRoleSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
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
    .line 163
    const-string v0, "kind"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->kind:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 68
    const-class v0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    const-class v0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/gdata/data/docs/AdditionalRoleSet;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 73
    new-instance v0, Lcom/google/gdata/data/docs/AdditionalRoleSet;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/AdditionalRoleSet;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/docs/AdditionalRoleSet;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getAdditionalRoleSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/AdditionalRoleSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const-class v0, Lcom/google/gdata/data/docs/AdditionalRoleSet;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdditionalRoleSets()Z
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/google/gdata/data/docs/AdditionalRoleSet;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasKind()Z
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->getKind()Ljava/lang/String;

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
    .line 157
    const-string v0, "kind"

    iget-object v1, p0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->throwExceptionIfImmutable()V

    .line 119
    iput-object p1, p0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->kind:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{AdditionalRoleInfo kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->kind:Ljava/lang/String;

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
    .line 133
    iget-object v0, p0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->kind:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    const-string v0, "kind"

    invoke-static {v0}, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method
