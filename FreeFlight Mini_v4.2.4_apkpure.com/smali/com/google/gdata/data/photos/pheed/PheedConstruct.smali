.class public abstract Lcom/google/gdata/data/photos/pheed/PheedConstruct;
.super Lcom/google/gdata/data/ValueConstruct;
.source "PheedConstruct.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/data/photos/pheed/PheedConstruct;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/google/gdata/data/photos/pheed/Namespaces;->PHEED_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/pheed/PheedConstruct;->setRequired(Z)V

    .line 41
    if-nez p2, :cond_0

    .line 42
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/pheed/PheedConstruct;->setValue(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method
