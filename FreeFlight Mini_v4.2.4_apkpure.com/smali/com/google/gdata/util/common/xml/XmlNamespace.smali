.class public Lcom/google/gdata/util/common/xml/XmlNamespace;
.super Ljava/lang/Object;
.source "XmlNamespace.java"


# instance fields
.field final alias:Ljava/lang/String;

.field final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "Null namespace URI"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    instance-of v3, p1, Lcom/google/gdata/util/common/xml/XmlNamespace;

    if-nez v3, :cond_1

    move v1, v2

    .line 75
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 71
    check-cast v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 72
    .local v0, "other":Lcom/google/gdata/util/common/xml/XmlNamespace;
    iget-object v3, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 73
    iget-object v3, v0, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 75
    :cond_3
    iget-object v3, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0
.end method
