.class public Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;
.super Ljava/lang/Object;
.source "ARCodecsComponent.java"


# instance fields
.field protected data:[B

.field protected lineSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->data:[B

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->lineSize:I

    .line 14
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "lineSize"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->data:[B

    .line 19
    iput p2, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->lineSize:I

    .line 20
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->data:[B

    return-object v0
.end method

.method public getlineSize()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->lineSize:I

    return v0
.end method
