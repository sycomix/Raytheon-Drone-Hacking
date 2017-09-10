.class public Lcom/google/gdata/data/health/ContinuityOfCareRecord;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "ContinuityOfCareRecord.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "ContinuityOfCareRecord"
    nsAlias = "ccr"
    nsUri = "urn:astm-org:CCR"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "ContinuityOfCareRecord"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 41
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 53
    const-class v1, Lcom/google/gdata/data/health/ContinuityOfCareRecord;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 56
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 57
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 58
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "{ContinuityOfCareRecord}"

    return-object v0
.end method
