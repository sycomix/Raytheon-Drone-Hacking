.class public Lcom/google/gdata/model/gd/QuotaBytesTotal;
.super Lcom/google/gdata/model/Element;
.source "QuotaBytesTotal.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/gdata/model/gd/QuotaBytesTotal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "quotaBytesTotal"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Long;

    const-class v2, Lcom/google/gdata/model/gd/QuotaBytesTotal;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/QuotaBytesTotal;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/gdata/model/gd/QuotaBytesTotal;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Long;",
            "+",
            "Lcom/google/gdata/model/gd/QuotaBytesTotal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<Ljava/lang/Long;+Lcom/google/gdata/model/gd/QuotaBytesTotal;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Long;",
            "+",
            "Lcom/google/gdata/model/gd/QuotaBytesTotal;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<Ljava/lang/Long;+Lcom/google/gdata/model/gd/QuotaBytesTotal;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/gdata/model/gd/QuotaBytesTotal;-><init>()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/QuotaBytesTotal;->setValue(Ljava/lang/Long;)Lcom/google/gdata/model/gd/QuotaBytesTotal;

    .line 89
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 44
    sget-object v1, Lcom/google/gdata/model/gd/QuotaBytesTotal;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/QuotaBytesTotal;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setContentRequired(Z)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 50
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 127
    if-ne p0, p1, :cond_0

    .line 128
    const/4 v1, 0x1

    .line 134
    :goto_0
    return v1

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/QuotaBytesTotal;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 133
    check-cast v0, Lcom/google/gdata/model/gd/QuotaBytesTotal;

    .line 134
    .local v0, "other":Lcom/google/gdata/model/gd/QuotaBytesTotal;
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/QuotaBytesTotal;->getValue()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/QuotaBytesTotal;->getValue()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/gdata/model/gd/QuotaBytesTotal;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/gdata/model/gd/QuotaBytesTotal;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/google/gdata/model/Element;->hasTextValue()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 140
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/QuotaBytesTotal;->getValue()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/QuotaBytesTotal;->getValue()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 143
    :cond_0
    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/QuotaBytesTotal;->lock()Lcom/google/gdata/model/gd/QuotaBytesTotal;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/QuotaBytesTotal;
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/QuotaBytesTotal;

    return-object v0
.end method

.method public setValue(Ljava/lang/Long;)Lcom/google/gdata/model/gd/QuotaBytesTotal;
    .locals 0
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 113
    return-object p0
.end method