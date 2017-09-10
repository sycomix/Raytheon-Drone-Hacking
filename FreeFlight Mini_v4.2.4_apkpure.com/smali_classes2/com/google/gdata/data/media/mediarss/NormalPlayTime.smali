.class public Lcom/google/gdata/data/media/mediarss/NormalPlayTime;
.super Ljava/lang/Object;
.source "NormalPlayTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;
    }
.end annotation


# static fields
.field public static final NOW:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;


# instance fields
.field private isNow:Z

.field private ms:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;-><init>(ZJ)V

    sput-object v0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->NOW:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;-><init>(ZJ)V

    .line 48
    return-void
.end method

.method private constructor <init>(ZJ)V
    .locals 0
    .param p1, "now"    # Z
    .param p2, "ms"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->isNow:Z

    .line 52
    iput-wide p2, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    .line 53
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/gdata/data/media/mediarss/NormalPlayTime;
    .locals 4
    .param p0, "stringRep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 84
    :goto_0
    return-object v1

    .line 79
    :cond_0
    const-string v1, "now"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    sget-object v1, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->NOW:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "parser":Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;
    new-instance v1, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    invoke-static {v0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->access$000(Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;-><init>(J)V

    goto :goto_0
.end method


# virtual methods
.method public getNptHhmmssRepresentation()Ljava/lang/String;
    .locals 18

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->isNow:Z

    if-eqz v14, :cond_0

    .line 120
    const-string v14, "now"

    .line 133
    :goto_0
    return-object v14

    .line 123
    :cond_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    const-wide/16 v16, 0x3e8

    rem-long v2, v14, v16

    .line 124
    .local v2, "fraction":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 125
    .local v12, "totalseconds":J
    const-wide/16 v14, 0x3c

    rem-long v8, v12, v14

    .line 126
    .local v8, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v10, v12, v14

    .line 127
    .local v10, "totalminutes":J
    const-wide/16 v14, 0x3c

    rem-long v6, v10, v14

    .line 128
    .local v6, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v4, v10, v14

    .line 129
    .local v4, "hours":J
    const-wide/16 v14, 0x0

    cmp-long v14, v2, v14

    if-lez v14, :cond_1

    .line 130
    const-string v14, "%1$02d:%2$02d:%3$02d.%4$03d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 133
    :cond_1
    const-string v14, "%1$02d:%2$02d:%3$02d"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_0
.end method

.method public getNptSecondsRepresentation()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 100
    iget-boolean v4, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->isNow:Z

    if-eqz v4, :cond_0

    .line 101
    const-string v4, "now"

    .line 109
    :goto_0
    return-object v4

    .line 104
    :cond_0
    iget-wide v4, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    div-long v2, v4, v6

    .line 105
    .local v2, "seconds":J
    iget-wide v4, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    rem-long v0, v4, v6

    .line 106
    .local v0, "fraction":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 107
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 109
    :cond_1
    const-string v4, "%1$d.%2$03d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTimeOffsetMs()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    return-wide v0
.end method

.method public isNow()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->isNow:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->getNptSecondsRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
