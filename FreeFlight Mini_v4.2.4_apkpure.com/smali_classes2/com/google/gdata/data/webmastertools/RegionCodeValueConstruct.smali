.class public abstract Lcom/google/gdata/data/webmastertools/RegionCodeValueConstruct;
.super Lcom/google/gdata/data/ValueConstruct;
.source "RegionCodeValueConstruct.java"


# static fields
.field public static final DEFAULT_REGION_CODE:Ljava/lang/String; = "ZZ"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "ZZ"

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/RegionCodeValueConstruct;->setValue(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/gdata/data/ValueConstruct;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    .end local p1    # "rhs":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/RegionCodeValueConstruct;->getValue()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/google/gdata/data/webmastertools/RegionCodeValueConstruct;

    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/gdata/data/webmastertools/RegionCodeValueConstruct;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/RegionCodeValueConstruct;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/ValueConstruct;->setValue(Ljava/lang/String;)V

    .line 80
    return-void
.end method
