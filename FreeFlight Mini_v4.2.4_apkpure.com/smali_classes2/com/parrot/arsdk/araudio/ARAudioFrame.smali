.class public Lcom/parrot/arsdk/araudio/ARAudioFrame;
.super Ljava/lang/Object;
.source "ARAudioFrame.java"


# static fields
.field private static final ARAUDIO_AUDIO_CODEC_PCM16LE:I = 0x0

.field private static final ARAUDIO_HEADER_FMT_11025_HZ:I = 0x1

.field private static final ARAUDIO_HEADER_FMT_8000_HZ:I = 0x0

.field private static final ARAUDIO_HEADER_FMT_BASE_RATE_SHIFT:I = 0xa

.field private static final ARAUDIO_HEADER_FMT_CHANNELS_SHIFT:I = 0xb

.field private static final ARAUDIO_HEADER_FMT_CODEC_SHIFT:I = 0xc

.field private static final ARAUDIO_HEADER_FMT_HAS_FEEDBACK_SHIFT:I = 0x7

.field private static final ARAUDIO_HEADER_FMT_MONO:I = 0x0

.field private static final ARAUDIO_HEADER_FMT_RATE_SHIFT_SHIFT:I = 0x8

.field private static final ARAUDIO_HEADER_FMT_RATE_X1:I = 0x0

.field private static final ARAUDIO_HEADER_FMT_RATE_X2:I = 0x1

.field private static final ARAUDIO_HEADER_FMT_RATE_X4:I = 0x2

.field private static final ARAUDIO_HEADER_FMT_RATE_X8:I = 0x3

.field private static final ARAUDIO_HEADER_FMT_STEREO:I = 0x1

.field public static final CODEC_ALL_SUPPORTED:I = 0x3

.field public static final CODEC_CONTROLLER_APA_MASK:I = 0x2

.field public static final CODEC_LEGACY_MASK:I = 0x1

.field public static final DATA_SIZE:I = 0x100

.field public static final FRAME_SIZE:I = 0x110

.field public static final HEADER_SIZE:I = 0x10

.field private static final SAMPLERATE_11025:I = 0x2b11

.field private static final SAMPLERATE_8000:I = 0x1f40


# instance fields
.field private mBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v1, 0x110

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "sampleFormat":S
    const/4 v1, 0x0

    int-to-short v0, v1

    .line 77
    or-int/lit8 v1, v0, 0x0

    int-to-short v0, v1

    .line 78
    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/araudio/ARAudioFrame;->setSampleFormat(S)V

    .line 79
    return-void
.end method

.method public static getSampleRate([B)I
    .locals 5
    .param p0, "buffer"    # [B

    .prologue
    const/16 v4, 0xa

    .line 106
    const/16 v1, 0x1f40

    .line 107
    .local v1, "sampleRate":I
    array-length v3, p0

    if-le v3, v4, :cond_0

    .line 109
    const/16 v3, 0x9

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, p0, v4

    add-int v0, v3, v4

    .line 111
    .local v0, "sampleFormat":I
    shr-int/lit8 v3, v0, 0xa

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 113
    const/16 v1, 0x2b11

    .line 119
    :goto_0
    shr-int/lit8 v3, v0, 0x8

    and-int/lit8 v2, v3, 0x3

    .line 120
    .local v2, "sampleShift":I
    shl-int/2addr v1, v2

    .line 122
    .end local v0    # "sampleFormat":I
    .end local v2    # "sampleShift":I
    :cond_0
    return v1

    .line 117
    .restart local v0    # "sampleFormat":I
    :cond_1
    const/16 v1, 0x1f40

    goto :goto_0
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    return-object v0
.end method

.method public setSampleFormat(S)V
    .locals 3
    .param p1, "sampleFormat"    # S

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    const/16 v1, 0x9

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    const/16 v1, 0x8

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 97
    return-void
.end method

.method public setTimestamp(J)V
    .locals 7
    .param p1, "timestamp"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 83
    iget-object v0, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    const/4 v1, 0x7

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 84
    iget-object v0, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    const/4 v1, 0x6

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 85
    iget-object v0, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    const/4 v1, 0x5

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 86
    iget-object v0, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    const/4 v1, 0x4

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 87
    iget-object v0, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    const/4 v1, 0x3

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 88
    iget-object v0, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    const/4 v1, 0x2

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    const/4 v1, 0x1

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/parrot/arsdk/araudio/ARAudioFrame;->mBuffer:[B

    const/4 v1, 0x0

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 91
    return-void
.end method
