.class public Lcom/parrot/controller/video/ARDecoder;
.super Ljava/lang/Object;
.source "ARDecoder.java"


# static fields
.field private static final ARDECODER_BPP:I = 0x2

.field private static final ARDECODER_H264_MAX_FRAME_HEIGHT:I = 0x440

.field private static final ARDECODER_H264_MAX_FRAME_WIDTH:I = 0x780

.field private static final ARDECODER_H264_MAX_LEVEL_SUPORTED:I = 0x2a

.field private static final ARDECODER_H264_MAX_REF_FRAMES:I = 0x2

.field private static final ARDECODER_H264_MIN_FRAME_HEIGHT:I = 0x40

.field private static final ARDECODER_H264_MIN_FRAME_WIDTH:I = 0x40

.field private static final ARDECODER_MAX_RES_X:I = 0x780

.field private static final ARDECODER_MAX_RES_Y:I = 0x438

.field private static final ARDECODER_WAIT_FOR_I_FRAME:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private arcodecsManager:Lcom/parrot/arsdk/arcodecs/ARCodecsManager;

.field private isInitialized:Z

.field private nbDecoded:I

.field private nextFrame:Lcom/parrot/controller/stream/ARFrame;

.field private numPictureDecoded:I

.field private outputFrame:Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;

.field private waitIFrame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/parrot/controller/video/ARDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/video/ARDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;)V
    .locals 0
    .param p1, "codecType"    # Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/ARDecoder;->initialize(Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/video/ARDecoder;)Lcom/parrot/controller/stream/ARFrame;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/video/ARDecoder;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/parrot/controller/video/ARDecoder;->nextFrame:Lcom/parrot/controller/stream/ARFrame;

    return-object v0
.end method

.method private initialize(Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;)V
    .locals 3
    .param p1, "codecType"    # Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/ARDecoder;->outputFrame:Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;

    .line 48
    iput-boolean v2, p0, Lcom/parrot/controller/video/ARDecoder;->isInitialized:Z

    .line 49
    iput-boolean v2, p0, Lcom/parrot/controller/video/ARDecoder;->waitIFrame:Z

    .line 50
    iput v1, p0, Lcom/parrot/controller/video/ARDecoder;->nbDecoded:I

    .line 51
    iput v1, p0, Lcom/parrot/controller/video/ARDecoder;->numPictureDecoded:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/video/ARDecoder;->arcodecsManager:Lcom/parrot/arsdk/arcodecs/ARCodecsManager;

    .line 54
    new-instance v0, Lcom/parrot/controller/video/ARDecoder$1;

    invoke-direct {v0, p0, p1}, Lcom/parrot/controller/video/ARDecoder$1;-><init>(Lcom/parrot/controller/video/ARDecoder;Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;)V

    iput-object v0, p0, Lcom/parrot/controller/video/ARDecoder;->arcodecsManager:Lcom/parrot/arsdk/arcodecs/ARCodecsManager;

    .line 61
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/parrot/controller/video/ARDecoder;->arcodecsManager:Lcom/parrot/arsdk/arcodecs/ARCodecsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->dispose()V

    .line 66
    return-void
.end method

.method public decodeFrame(Lcom/parrot/controller/stream/ARFrame;)Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;
    .locals 5
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;

    .prologue
    const/4 v4, 0x1

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "retFrame":Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;
    iget-boolean v2, p0, Lcom/parrot/controller/video/ARDecoder;->isInitialized:Z

    if-nez v2, :cond_0

    .line 73
    const/4 v2, 0x0

    .line 100
    :goto_0
    return-object v2

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getMissed()I

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    iput-boolean v4, p0, Lcom/parrot/controller/video/ARDecoder;->waitIFrame:Z

    .line 81
    :cond_1
    iget-boolean v2, p0, Lcom/parrot/controller/video/ARDecoder;->waitIFrame:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->isIFrame()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/controller/video/ARDecoder;->waitIFrame:Z

    .line 84
    iput-object p1, p0, Lcom/parrot/controller/video/ARDecoder;->nextFrame:Lcom/parrot/controller/stream/ARFrame;

    .line 86
    iget-object v2, p0, Lcom/parrot/controller/video/ARDecoder;->arcodecsManager:Lcom/parrot/arsdk/arcodecs/ARCodecsManager;

    iget-object v3, p0, Lcom/parrot/controller/video/ARDecoder;->outputFrame:Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;->decode(Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;)Z

    move-result v0

    .line 87
    .local v0, "decoded":Z
    if-ne v0, v4, :cond_4

    .line 89
    iget v2, p0, Lcom/parrot/controller/video/ARDecoder;->numPictureDecoded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/parrot/controller/video/ARDecoder;->numPictureDecoded:I

    .line 90
    iget-object v2, p0, Lcom/parrot/controller/video/ARDecoder;->outputFrame:Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;

    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getMissed()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->setMissed(I)V

    .line 91
    iget-object v2, p0, Lcom/parrot/controller/video/ARDecoder;->outputFrame:Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;

    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->isIFrame()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->setIsIFrame(Z)V

    .line 92
    iget-object v1, p0, Lcom/parrot/controller/video/ARDecoder;->outputFrame:Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;

    .end local v0    # "decoded":Z
    :cond_3
    :goto_1
    move-object v2, v1

    .line 100
    goto :goto_0

    .line 96
    .restart local v0    # "decoded":Z
    :cond_4
    sget-object v2, Lcom/parrot/controller/video/ARDecoder;->TAG:Ljava/lang/String;

    const-string v3, "Decoding error "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
