.class abstract Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;
.super Ljava/lang/Object;
.source "OAuthHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/authn/oauth/OAuthHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "KeyValuePair"
.end annotation


# instance fields
.field private keyValueEndDelimiter:Ljava/lang/String;

.field private keyValueStartDelimiter:Ljava/lang/String;

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pairDelimiter:Ljava/lang/String;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyValueStartDelimiter"    # Ljava/lang/String;
    .param p2, "keyValueEndDelimiter"    # Ljava/lang/String;
    .param p3, "pairDelimiter"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->keyValueStartDelimiter:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->keyValueEndDelimiter:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->pairDelimiter:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->keys:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->values:Ljava/util/List;

    .line 79
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->values:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v1, "keyValueString":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->size()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 134
    if-lez v0, :cond_0

    .line 135
    iget-object v3, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->pairDelimiter:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->getKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->keyValueStartDelimiter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->keyValueEndDelimiter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
