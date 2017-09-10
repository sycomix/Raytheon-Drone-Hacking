.class public Lcom/parrot/freeflight/media/model/AudioAtomsFactory;
.super Ljava/lang/Object;
.source "AudioAtomsFactory.java"


# static fields
.field public static final MDHD:Ljava/lang/String; = "moov/2:trak/mdia/mdhd"

.field public static final STCO:Ljava/lang/String; = "moov/2:trak/mdia/minf/stbl/stco"

.field public static final STSC:Ljava/lang/String; = "moov/2:trak/mdia/minf/stbl/stsc"

.field public static final STSD:Ljava/lang/String; = "moov/2:trak/mdia/minf/stbl/stsd"

.field public static final STSZ:Ljava/lang/String; = "moov/2:trak/mdia/minf/stbl/stsz"

.field public static final STTS:Ljava/lang/String; = "moov/2:trak/mdia/minf/stbl/stts"

.field private static final TAG:Ljava/lang/String; = "AudioAtomsFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createChunkOffsetAtoms(Ljava/lang/String;)Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, "chunkOffsetAtoms":Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;
    const-string v5, "moov/2:trak/mdia/minf/stbl/stco"

    invoke-static {p0, v5}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->getAtom(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 96
    .local v0, "atom":[B
    if-eqz v0, :cond_0

    .line 97
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 99
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 100
    .local v4, "nbAudioChunks":I
    new-instance v1, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;

    .end local v1    # "chunkOffsetAtoms":Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;
    invoke-direct {v1}, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;-><init>()V

    .line 101
    .restart local v1    # "chunkOffsetAtoms":Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 102
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->add(Ljava/lang/Integer;)V

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v4    # "nbAudioChunks":I
    :cond_0
    return-object v1
.end method

.method public static createMediaHeaderAtoms(Ljava/lang/String;)Lcom/parrot/freeflight/media/model/audio/MediaHeaderAtoms;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 30
    .local v2, "mediaHeaderAtoms":Lcom/parrot/freeflight/media/model/audio/MediaHeaderAtoms;
    const-string v4, "moov/2:trak/mdia/mdhd"

    invoke-static {p0, v4}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->getAtom(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    .local v0, "atom":[B
    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    .local v1, "in":Ljava/io/DataInputStream;
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 36
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 37
    .local v3, "timescale":I
    const-string v4, "AudioAtomsFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timescale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v2, Lcom/parrot/freeflight/media/model/audio/MediaHeaderAtoms;

    .end local v2    # "mediaHeaderAtoms":Lcom/parrot/freeflight/media/model/audio/MediaHeaderAtoms;
    invoke-direct {v2, v3}, Lcom/parrot/freeflight/media/model/audio/MediaHeaderAtoms;-><init>(I)V

    .line 42
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v3    # "timescale":I
    .restart local v2    # "mediaHeaderAtoms":Lcom/parrot/freeflight/media/model/audio/MediaHeaderAtoms;
    :cond_0
    return-object v2
.end method

.method public static createSampleDescriptionAtoms(Ljava/lang/String;)Lcom/parrot/freeflight/media/model/audio/SampleDescriptionAtoms;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v4, 0x0

    .line 48
    .local v4, "sampleDescriptionAtoms":Lcom/parrot/freeflight/media/model/audio/SampleDescriptionAtoms;
    const-string v7, "moov/2:trak/mdia/minf/stbl/stsd"

    invoke-static {p0, v7}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->getAtom(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    .local v0, "atom":[B
    if-eqz v0, :cond_0

    .line 55
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    .local v2, "in":Ljava/io/DataInputStream;
    const/16 v7, 0xc

    invoke-virtual {v2, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 57
    const/4 v7, 0x4

    new-array v6, v7, [B

    .line 58
    .local v6, "type":[B
    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->read([B)I

    .line 59
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 60
    .local v1, "audioSampleType":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-virtual {v2, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 61
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 62
    .local v3, "nbChannels":I
    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 63
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 64
    .local v5, "sampleRate":I
    const-string v7, "AudioAtomsFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nbChannels="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sampleRate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v4, Lcom/parrot/freeflight/media/model/audio/SampleDescriptionAtoms;

    .end local v4    # "sampleDescriptionAtoms":Lcom/parrot/freeflight/media/model/audio/SampleDescriptionAtoms;
    invoke-direct {v4, v5, v3, v1}, Lcom/parrot/freeflight/media/model/audio/SampleDescriptionAtoms;-><init>(IILjava/lang/String;)V

    .line 68
    .end local v1    # "audioSampleType":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "nbChannels":I
    .end local v5    # "sampleRate":I
    .end local v6    # "type":[B
    .restart local v4    # "sampleDescriptionAtoms":Lcom/parrot/freeflight/media/model/audio/SampleDescriptionAtoms;
    :cond_0
    return-object v4
.end method

.method public static createSampleSizeAtoms(Ljava/lang/String;)Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v5, 0x0

    .line 113
    .local v5, "sampleSizeAtoms":Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;
    const-string v6, "moov/2:trak/mdia/minf/stbl/stsz"

    invoke-static {p0, v6}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->getAtom(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 117
    .local v0, "atom":[B
    if-eqz v0, :cond_0

    .line 118
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 119
    .local v2, "in":Ljava/io/DataInputStream;
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 120
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 121
    .local v4, "sampleSize":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 122
    .local v3, "sampleCount":I
    new-instance v5, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;

    .end local v5    # "sampleSizeAtoms":Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;
    invoke-direct {v5, v4, v3}, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;-><init>(II)V

    .line 123
    .restart local v5    # "sampleSizeAtoms":Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;
    if-nez v4, :cond_0

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 125
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->add(I)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "sampleCount":I
    .end local v4    # "sampleSize":I
    :cond_0
    return-object v5
.end method

.method public static createSampleToChunkAtoms(Ljava/lang/String;)Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 134
    const/4 v6, 0x0

    .line 136
    .local v6, "sampleToChunkAtoms":Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;
    const-string v7, "moov/2:trak/mdia/minf/stbl/stsc"

    invoke-static {p0, v7}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->getAtom(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 139
    .local v0, "atom":[B
    if-eqz v0, :cond_0

    .line 140
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    .local v3, "in":Ljava/io/DataInputStream;
    invoke-virtual {v3, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 142
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 143
    .local v4, "nbEntries":I
    new-instance v6, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;

    .end local v6    # "sampleToChunkAtoms":Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;
    invoke-direct {v6}, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;-><init>()V

    .line 144
    .restart local v6    # "sampleToChunkAtoms":Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 145
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 146
    .local v1, "firstChunk":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 147
    .local v5, "samplePerChunk":I
    invoke-virtual {v6, v1, v5}, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->add(II)V

    .line 148
    invoke-virtual {v3, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "firstChunk":I
    .end local v2    # "i":I
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v4    # "nbEntries":I
    .end local v5    # "samplePerChunk":I
    :cond_0
    return-object v6
.end method

.method public static createTimeToSampleAtoms(Ljava/lang/String;)Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v4, 0x0

    .line 74
    .local v4, "timeToSampleAtoms":Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;
    const-string v5, "moov/2:trak/mdia/minf/stbl/stts"

    invoke-static {p0, v5}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->getAtom(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 77
    .local v0, "atom":[B
    if-eqz v0, :cond_0

    .line 78
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    .local v2, "in":Ljava/io/DataInputStream;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 80
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 81
    .local v3, "nbSttsEntries":I
    new-instance v4, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;

    .end local v4    # "timeToSampleAtoms":Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;
    invoke-direct {v4}, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;-><init>()V

    .line 82
    .restart local v4    # "timeToSampleAtoms":Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 83
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->add(II)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "nbSttsEntries":I
    :cond_0
    return-object v4
.end method
