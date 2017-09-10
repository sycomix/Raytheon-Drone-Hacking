.class public Lcom/parrot/freeflight/util/ui/GravityManager;
.super Ljava/lang/Object;
.source "GravityManager.java"


# static fields
.field private static final BOTTOM:I = 0x10

.field private static final CENTER:I = 0x40

.field private static final CENTER_HORIZONTAL:I = 0x4

.field private static final CENTER_VERTICAL:I = 0x20

.field private static final LEFT:I = 0x1

.field private static final RIGHT:I = 0x2

.field private static final TOP:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCustomGravity(I)I
    .locals 3
    .param p0, "gravity"    # I

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 19
    .local v0, "returnedGravity":I
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 20
    or-int/lit8 v0, v0, 0x30

    .line 23
    :cond_0
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 24
    or-int/lit8 v0, v0, 0x50

    .line 27
    :cond_1
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 28
    or-int/lit8 v0, v0, 0x3

    .line 31
    :cond_2
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 32
    or-int/lit8 v0, v0, 0x5

    .line 35
    :cond_3
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 36
    or-int/lit8 v0, v0, 0x1

    .line 39
    :cond_4
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 40
    or-int/lit8 v0, v0, 0x10

    .line 43
    :cond_5
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 44
    or-int/lit8 v0, v0, 0x11

    .line 47
    :cond_6
    return v0
.end method
