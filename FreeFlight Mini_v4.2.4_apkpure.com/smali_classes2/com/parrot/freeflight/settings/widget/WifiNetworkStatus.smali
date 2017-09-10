.class public Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;
.super Ljava/lang/Object;
.source "WifiNetworkStatus.java"


# instance fields
.field public final mChannelInfo:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final mRssi:F

.field public final mSsid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIFLjava/lang/String;)V
    .locals 1
    .param p1, "band"    # I
    .param p2, "channel"    # I
    .param p3, "rssi"    # F
    .param p4, "ssid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-direct {v0, p1, p2}, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;-><init>(II)V

    iput-object v0, p0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mChannelInfo:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 15
    iput p3, p0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mRssi:F

    .line 16
    iput-object p4, p0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mSsid:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    if-ne p0, p1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v1

    .line 23
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    instance-of v3, p1, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;

    if-nez v3, :cond_3

    move v1, v2

    .line 26
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;

    .line 29
    .local v0, "networkStatus":Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;
    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mChannelInfo:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mChannelInfo:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mRssi:F

    iget v4, p0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mRssi:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mSsid:Ljava/lang/String;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mSsid:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method
