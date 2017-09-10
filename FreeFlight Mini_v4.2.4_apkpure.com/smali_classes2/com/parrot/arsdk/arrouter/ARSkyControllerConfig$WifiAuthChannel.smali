.class public Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;
.super Ljava/lang/Object;
.source "ARSkyControllerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiAuthChannel"
.end annotation


# instance fields
.field public mBand:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

.field public mChannel:B

.field public mInOrOut:B


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;BB)V
    .locals 0
    .param p1, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .param p2, "channel"    # B
    .param p3, "in_or_out"    # B

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;->mBand:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    .line 447
    iput-byte p2, p0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;->mChannel:B

    .line 448
    iput-byte p3, p0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;->mInOrOut:B

    .line 449
    return-void
.end method
