.class public Lcom/parrot/freeflight/util/BinaryOp;
.super Ljava/lang/Object;
.source "BinaryOp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUpperPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 5
    add-int/lit8 p0, p0, -0x1

    .line 6
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 7
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 8
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 9
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 10
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 11
    add-int/lit8 p0, p0, 0x1

    .line 12
    return p0
.end method
