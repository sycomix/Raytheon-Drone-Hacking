.class public Lcom/google/gdata/data/docs/Feature;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Feature.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "feature"
    nsAlias = "docs"
    nsUri = "http://schemas.google.com/docs/2007"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "feature"


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
    .line 130
    const-class v1, Lcom/google/gdata/data/docs/Feature;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 132
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 133
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 134
    return-object v0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 46
    const-class v0, Lcom/google/gdata/data/docs/Feature;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    const-class v0, Lcom/google/gdata/data/docs/Feature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/gdata/data/docs/FeatureName;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 51
    const-class v0, Lcom/google/gdata/data/docs/Feature;

    const-class v1, Lcom/google/gdata/data/docs/FeatureRate;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getFeatureName()Lcom/google/gdata/data/docs/FeatureName;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/google/gdata/data/docs/FeatureName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/Feature;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/FeatureName;

    return-object v0
.end method

.method public getFeatureRate()Lcom/google/gdata/data/docs/FeatureRate;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/google/gdata/data/docs/FeatureRate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/Feature;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/FeatureRate;

    return-object v0
.end method

.method public hasFeatureName()Z
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/google/gdata/data/docs/FeatureName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/Feature;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasFeatureRate()Z
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/google/gdata/data/docs/FeatureRate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/Feature;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setFeatureName(Lcom/google/gdata/data/docs/FeatureName;)V
    .locals 1
    .param p1, "featureName"    # Lcom/google/gdata/data/docs/FeatureName;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const-class v0, Lcom/google/gdata/data/docs/FeatureName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/Feature;->removeExtension(Ljava/lang/Class;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/Feature;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setFeatureRate(Lcom/google/gdata/data/docs/FeatureRate;)V
    .locals 1
    .param p1, "featureRate"    # Lcom/google/gdata/data/docs/FeatureRate;

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const-class v0, Lcom/google/gdata/data/docs/FeatureRate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/Feature;->removeExtension(Ljava/lang/Class;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/Feature;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string/jumbo v0, "{Feature}"

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
