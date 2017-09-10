.class public Lcom/parrot/arsdk/araudio/ARAudioTx;
.super Ljava/lang/Object;
.source "ARAudioTx.java"

# interfaces
.implements Lcom/parrot/arsdk/arstream/ARStreamFilter;


# instance fields
.field private cFilter:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0}, Lcom/parrot/arsdk/araudio/ARAudioTx;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/araudio/ARAudioTx;->cFilter:J

    .line 44
    return-void
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeNew()J
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/parrot/arsdk/araudio/ARAudioTx;->cFilter:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/araudio/ARAudioTx;->nativeDelete(J)V

    .line 52
    return-void
.end method

.method public getFilterPointer()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/parrot/arsdk/araudio/ARAudioTx;->cFilter:J

    return-wide v0
.end method
