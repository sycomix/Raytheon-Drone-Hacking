.class synthetic Lcom/parrot/freeflight/core/video/VideoStreamingController$4;
.super Ljava/lang/Object;
.source "VideoStreamingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/video/VideoStreamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$arcodecs$ARCODECS_TYPE_ENUM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 209
    invoke-static {}, Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;->values()[Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$4;->$SwitchMap$com$parrot$arsdk$arcodecs$ARCODECS_TYPE_ENUM:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$4;->$SwitchMap$com$parrot$arsdk$arcodecs$ARCODECS_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;->ARCODECS_TYPE_VIDEO_H264_FFMPEG:Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$4;->$SwitchMap$com$parrot$arsdk$arcodecs$ARCODECS_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;->ARCODECS_TYPE_VIDEO_MJPEG_LIBJPEGTURBO:Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
