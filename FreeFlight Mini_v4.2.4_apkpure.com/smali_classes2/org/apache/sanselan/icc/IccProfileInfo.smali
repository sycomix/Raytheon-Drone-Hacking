.class public Lorg/apache/sanselan/icc/IccProfileInfo;
.super Ljava/lang/Object;
.source "IccProfileInfo.java"

# interfaces
.implements Lorg/apache/sanselan/icc/IccConstants;


# instance fields
.field public final CMMTypeSignature:I

.field public final ColorSpace:I

.field public final DeviceManufacturer:I

.field public final DeviceModel:I

.field public final PrimaryPlatformSignature:I

.field public final ProfileConnectionSpace:I

.field public final ProfileCreatorSignature:I

.field public final ProfileDeviceClassSignature:I

.field public final ProfileFileSignature:I

.field public final ProfileID:[B

.field public final ProfileSize:I

.field public final ProfileVersion:I

.field public final RenderingIntent:I

.field public final VariousFlags:I

.field public final data:[B

.field public final tags:[Lorg/apache/sanselan/icc/IccTag;


# direct methods
.method public constructor <init>([BIIIIIIIIIIIII[B[Lorg/apache/sanselan/icc/IccTag;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "ProfileSize"    # I
    .param p3, "CMMTypeSignature"    # I
    .param p4, "ProfileVersion"    # I
    .param p5, "ProfileDeviceClassSignature"    # I
    .param p6, "ColorSpace"    # I
    .param p7, "ProfileConnectionSpace"    # I
    .param p8, "ProfileFileSignature"    # I
    .param p9, "PrimaryPlatformSignature"    # I
    .param p10, "VariousFlags"    # I
    .param p11, "DeviceManufacturer"    # I
    .param p12, "DeviceModel"    # I
    .param p13, "RenderingIntent"    # I
    .param p14, "ProfileCreatorSignature"    # I
    .param p15, "ProfileID"    # [B
    .param p16, "tags"    # [Lorg/apache/sanselan/icc/IccTag;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->data:[B

    .line 55
    iput p2, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileSize:I

    .line 56
    iput p3, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->CMMTypeSignature:I

    .line 57
    iput p4, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileVersion:I

    .line 58
    iput p5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileDeviceClassSignature:I

    .line 59
    iput p6, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ColorSpace:I

    .line 60
    iput p7, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileConnectionSpace:I

    .line 61
    iput p8, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileFileSignature:I

    .line 62
    iput p9, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->PrimaryPlatformSignature:I

    .line 63
    iput p10, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->VariousFlags:I

    .line 64
    iput p11, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->DeviceManufacturer:I

    .line 65
    iput p12, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->DeviceModel:I

    .line 66
    iput p13, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->RenderingIntent:I

    .line 67
    iput p14, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileCreatorSignature:I

    .line 68
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileID:[B

    .line 70
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->tags:[Lorg/apache/sanselan/icc/IccTag;

    .line 71
    return-void
.end method

.method private printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "i"    # I

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/apache/sanselan/icc/IccProfileInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public issRGB()Z
    .locals 3

    .prologue
    .line 75
    iget v1, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->DeviceManufacturer:I

    const v2, 0x49454320    # 807986.0f

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->DeviceModel:I

    const v2, 0x73524742

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 76
    .local v0, "result":Z
    :goto_0
    return v0

    .line 75
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    :try_start_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Lorg/apache/sanselan/icc/IccProfileInfo;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IccProfileInfo: Error"

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 107
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 110
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "data length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->data:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "ProfileDeviceClassSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileDeviceClassSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 115
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "CMMTypeSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->CMMTypeSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 117
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "ProfileDeviceClassSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileDeviceClassSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 119
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "ColorSpace"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ColorSpace:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 120
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "ProfileConnectionSpace"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileConnectionSpace:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 123
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "ProfileFileSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileFileSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 126
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "PrimaryPlatformSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->PrimaryPlatformSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 129
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "ProfileFileSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileFileSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 132
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "DeviceManufacturer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->DeviceManufacturer:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 135
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "DeviceModel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->DeviceModel:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 137
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "RenderingIntent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->RenderingIntent:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 139
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "ProfileCreatorSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->ProfileCreatorSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->tags:[Lorg/apache/sanselan/icc/IccTag;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 144
    iget-object v4, p0, Lorg/apache/sanselan/icc/IccProfileInfo;->tags:[Lorg/apache/sanselan/icc/IccTag;

    aget-object v3, v4, v0

    .line 145
    .local v3, "tag":Lorg/apache/sanselan/icc/IccTag;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/apache/sanselan/icc/IccTag;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v3    # "tag":Lorg/apache/sanselan/icc/IccTag;
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "issRGB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/sanselan/icc/IccProfileInfo;->issRGB()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 151
    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
