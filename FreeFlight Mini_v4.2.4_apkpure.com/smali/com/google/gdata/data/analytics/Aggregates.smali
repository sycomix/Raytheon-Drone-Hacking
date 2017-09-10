.class public Lcom/google/gdata/data/analytics/Aggregates;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Aggregates.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "aggregates"
    nsAlias = "dxp"
    nsUri = "http://schemas.google.com/analytics/2009"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "aggregates"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 44
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 96
    const-class v1, Lcom/google/gdata/data/analytics/Aggregates;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 98
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 99
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 100
    return-object v0
.end method


# virtual methods
.method public addMetric(Lcom/google/gdata/data/analytics/Metric;)V
    .locals 1
    .param p1, "metric"    # Lcom/google/gdata/data/analytics/Metric;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Aggregates;->getMetrics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 48
    const-class v0, Lcom/google/gdata/data/analytics/Aggregates;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const-class v0, Lcom/google/gdata/data/analytics/Aggregates;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/gdata/data/analytics/Metric;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getMetrics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/Metric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const-class v0, Lcom/google/gdata/data/analytics/Metric;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Aggregates;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMetrics()Z
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/google/gdata/data/analytics/Metric;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Aggregates;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "{Aggregates}"

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
