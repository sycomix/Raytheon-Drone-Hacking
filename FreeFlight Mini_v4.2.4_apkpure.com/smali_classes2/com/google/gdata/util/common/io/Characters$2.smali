.class final Lcom/google/gdata/util/common/io/Characters$2;
.super Ljava/lang/Object;
.source "Characters.java"

# interfaces
.implements Lcom/google/gdata/util/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/util/common/io/Characters;->newReaderSupplier(Lcom/google/gdata/util/common/io/InputSupplier;Ljava/nio/charset/Charset;)Lcom/google/gdata/util/common/io/InputSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gdata/util/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStreamReader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$charset:Ljava/nio/charset/Charset;

.field final synthetic val$in:Lcom/google/gdata/util/common/io/InputSupplier;


# direct methods
.method constructor <init>(Lcom/google/gdata/util/common/io/InputSupplier;Ljava/nio/charset/Charset;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/gdata/util/common/io/Characters$2;->val$in:Lcom/google/gdata/util/common/io/InputSupplier;

    iput-object p2, p0, Lcom/google/gdata/util/common/io/Characters$2;->val$charset:Ljava/nio/charset/Charset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Ljava/io/InputStreamReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v0, p0, Lcom/google/gdata/util/common/io/Characters$2;->val$in:Lcom/google/gdata/util/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/gdata/util/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/gdata/util/common/io/Characters$2;->val$charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public bridge synthetic getInput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/gdata/util/common/io/Characters$2;->getInput()Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method
