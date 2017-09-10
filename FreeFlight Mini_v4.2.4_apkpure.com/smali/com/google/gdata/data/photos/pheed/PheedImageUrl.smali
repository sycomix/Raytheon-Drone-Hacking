.class public Lcom/google/gdata/data/photos/pheed/PheedImageUrl;
.super Lcom/google/gdata/data/photos/pheed/PheedConstruct;
.source "PheedImageUrl.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/photos/pheed/PheedImageUrl;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "imgsrc"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/photos/pheed/PheedConstruct;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/photos/pheed/PheedImageUrl;

    sget-object v2, Lcom/google/gdata/data/photos/pheed/Namespaces;->PHEED_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "imgsrc"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method
