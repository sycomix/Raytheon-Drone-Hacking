.class public abstract Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
.super Ljava/lang/Object;
.source "AxisFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter$Type;
    }
.end annotation


# static fields
.field public static final EXPONENTIAL:I = 0x1

.field protected static final EXPONENTIAL_FILTER_TAG:Ljava/lang/String; = "ARXF"

.field private static final EXPONENTIAL_SOURCE_REQUIRED_LENGTH:I = 0x3

.field protected static final FILTER_SEPARATOR:Ljava/lang/String; = ";"

.field public static final MULTIPOINT:I = 0x0

.field protected static final MULTIPOINT_FILTER_TAG:Ljava/lang/String; = "ARMF"

.field public static final UNKNOWN:I = 0x2


# instance fields
.field private mType:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;->mType:I

    .line 30
    return-void
.end method

.method public static getSourceType(Ljava/lang/String;)I
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    const/4 v0, 0x2

    .line 38
    .local v0, "type":I
    invoke-static {p0}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;->isAnExpFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const/4 v0, 0x1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    invoke-static {p0}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;->isAMultiPointFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAMultiPointFilter(Ljava/lang/String;)Z
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    if-eqz p0, :cond_0

    .line 59
    const-string v3, ";"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "src":[Ljava/lang/String;
    array-length v3, v0

    if-lt v3, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, "ARMF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    .end local v0    # "src":[Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isAnExpFilter(Ljava/lang/String;)Z
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    const-string v2, ";"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "src":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v1

    const-string v3, "ARXF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 54
    .end local v0    # "src":[Ljava/lang/String;
    :cond_0
    return v1
.end method


# virtual methods
.method public abstract apply(F)F
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;->mType:I

    return v0
.end method

.method public abstract toSaveString()Ljava/lang/String;
.end method
