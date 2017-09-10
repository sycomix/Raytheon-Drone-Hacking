.class public Lcom/google/gdata/data/projecthosting/MergedInto;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "MergedInto.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "mergedInto"
    nsAlias = "issues"
    nsUri = "http://schemas.google.com/projecthosting/issues/2009"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "mergedInto"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 42
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 129
    const-class v1, Lcom/google/gdata/data/projecthosting/MergedInto;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 131
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 132
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 133
    return-object v0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 46
    const-class v0, Lcom/google/gdata/data/projecthosting/MergedInto;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const-class v0, Lcom/google/gdata/data/projecthosting/MergedInto;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/gdata/data/projecthosting/Id;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 50
    const-class v0, Lcom/google/gdata/data/projecthosting/MergedInto;

    const-class v1, Lcom/google/gdata/data/projecthosting/Project;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getId()Lcom/google/gdata/data/projecthosting/Id;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/google/gdata/data/projecthosting/Id;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/MergedInto;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Id;

    return-object v0
.end method

.method public getProject()Lcom/google/gdata/data/projecthosting/Project;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/google/gdata/data/projecthosting/Project;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/MergedInto;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Project;

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/google/gdata/data/projecthosting/Id;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/MergedInto;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasProject()Z
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcom/google/gdata/data/projecthosting/Project;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/MergedInto;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setId(Lcom/google/gdata/data/projecthosting/Id;)V
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/data/projecthosting/Id;

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const-class v0, Lcom/google/gdata/data/projecthosting/Id;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/MergedInto;->removeExtension(Ljava/lang/Class;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/MergedInto;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setProject(Lcom/google/gdata/data/projecthosting/Project;)V
    .locals 1
    .param p1, "project"    # Lcom/google/gdata/data/projecthosting/Project;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    const-class v0, Lcom/google/gdata/data/projecthosting/Project;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/MergedInto;->removeExtension(Ljava/lang/Class;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/MergedInto;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string/jumbo v0, "{MergedInto}"

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
