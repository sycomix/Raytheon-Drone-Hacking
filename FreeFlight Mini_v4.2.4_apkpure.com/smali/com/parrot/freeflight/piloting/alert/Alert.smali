.class public Lcom/parrot/freeflight/piloting/alert/Alert;
.super Ljava/lang/Object;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/alert/Alert$Type;
    }
.end annotation


# static fields
.field public static final CANNOT_TAKE_PHOTO:I = 0x10

.field public static final CRITICAL_BATTERY:I = 0x2

.field public static final CUT_OUT:I = 0x1

.field public static final DISCONNECTED:I = 0x6

.field public static final FPV_VIDEO_NOT_RECORDING:I = 0x32

.field public static final LOW_BATTERY:I = 0x3

.field public static final MEMORY_FULL:I = 0xf

.field public static final MOTOR_ERROR:I = 0x8

.field public static final NONE:I = -0x1

.field public static final SENSOR_BAROMETER:I = 0xb

.field public static final SENSOR_GPS:I = 0xd

.field public static final SENSOR_IMU:I = 0xa

.field public static final SENSOR_MAGNETOMETER:I = 0xe

.field public static final SENSOR_ULTRASOUND:I = 0xc

.field public static final TOO_FAR:I = 0x5

.field public static final TOO_MUCH_ANGLE:I = 0x4

.field public static final USER_EMERGENCY:I = 0x0

.field public static final USES_ARSTREAM_1:I = 0x7

.field public static final VIDEO_LOCKED:I = 0x14

.field public static final VIDEO_LOW_BATTERY:I = 0x12

.field public static final VIDEO_NOT_READY:I = 0x11

.field public static final VIDEO_NO_STORAGE_MEDIA:I = 0x13

.field public static final VIDEO_UNKNOWN_ERROR:I = 0x15


# instance fields
.field private mMessage:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/parrot/freeflight/piloting/alert/Alert;->mType:I

    .line 57
    iput p2, p0, Lcom/parrot/freeflight/piloting/alert/Alert;->mMessage:I

    .line 58
    return-void
.end method


# virtual methods
.method public getMessage()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 67
    iget v0, p0, Lcom/parrot/freeflight/piloting/alert/Alert;->mMessage:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/parrot/freeflight/piloting/alert/Alert;->mType:I

    return v0
.end method

.method public setInfo(II)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 71
    iget v0, p0, Lcom/parrot/freeflight/piloting/alert/Alert;->mType:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/alert/Alert;->mMessage:I

    if-eq v0, p2, :cond_1

    .line 72
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/alert/Alert;->mType:I

    .line 73
    iput p2, p0, Lcom/parrot/freeflight/piloting/alert/Alert;->mMessage:I

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
