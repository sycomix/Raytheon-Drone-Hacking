.class public Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
.super Ljava/lang/Object;
.source "WifiChannelInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/widget/WifiChannelInfo$WifiBand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final WIFI_BAND_2_4GHZ:I = 0x0

.field public static final WIFI_BAND_5GHZ:I = 0x1

.field public static final WIFI_BAND_UNKNOWN:I = 0x2


# instance fields
.field public band:I

.field public channel:I

.field public indoorAllowed:Z

.field public outdoorAllowed:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "band"    # I
    .param p2, "channel"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    .line 26
    iput p2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    .line 27
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;)I
    .locals 2
    .param p1, "another"    # Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    iget v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    iget v1, p1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    if-eq v0, v1, :cond_0

    .line 57
    iget v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    iget v1, p1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    sub-int/2addr v0, v1

    .line 58
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    iget v1, p1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9
    check-cast p1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->compareTo(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 45
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 47
    .local v0, "other":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 50
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 31
    const/16 v0, 0x1f

    .line 32
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 33
    .local v1, "result":I
    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    add-int/lit8 v1, v2, 0x1f

    .line 34
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    add-int v1, v2, v3

    .line 35
    return v1
.end method
