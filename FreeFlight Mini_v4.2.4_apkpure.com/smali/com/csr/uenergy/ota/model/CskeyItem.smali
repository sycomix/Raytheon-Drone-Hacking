.class public Lcom/csr/uenergy/ota/model/CskeyItem;
.super Ljava/lang/Object;
.source "CskeyItem.java"


# instance fields
.field public id:I

.field public length:I

.field public name:Ljava/lang/String;

.field public offset:I

.field public value:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/csr/uenergy/ota/model/CskeyItem;->name:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/csr/uenergy/ota/model/CskeyItem;->id:I

    .line 50
    iput p3, p0, Lcom/csr/uenergy/ota/model/CskeyItem;->offset:I

    .line 51
    iput p4, p0, Lcom/csr/uenergy/ota/model/CskeyItem;->length:I

    .line 52
    mul-int/lit8 v0, p4, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/csr/uenergy/ota/model/CskeyItem;->value:[B

    .line 53
    return-void
.end method
