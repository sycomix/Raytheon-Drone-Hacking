.class Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;
.super Ljava/lang/Object;
.source "NormalPlayTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/media/mediarss/NormalPlayTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NPTParser"
.end annotation


# static fields
.field private static final EOF:C


# instance fields
.field private current:C

.field private currentIndex:I

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->text:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->length:I

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    .line 153
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->parse()J

    move-result-wide v0

    return-wide v0
.end method

.method private assertCurrentIs(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 202
    iget-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    if-eq p1, v0, :cond_0

    .line 203
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Unexpected character"

    iget v2, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method

.method private digitValue()I
    .locals 1

    .prologue
    .line 194
    iget-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    add-int/lit8 v0, v0, -0x30

    return v0
.end method

.method private isDigit()Z
    .locals 2

    .prologue
    .line 198
    iget-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    iget-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private next()V
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    .line 209
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    iget v1, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->length:I

    if-lt v0, v1, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->text:Ljava/lang/String;

    iget v1, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    goto :goto_0
.end method

.method private parse()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->parseNumber()I

    move-result v1

    .line 160
    .local v1, "first":I
    iget-char v10, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_0

    .line 161
    move v2, v1

    .line 162
    .local v2, "hours":I
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    .line 163
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->parseNumber()I

    move-result v10

    int-to-long v4, v10

    .line 164
    .local v4, "minutes":J
    const/16 v10, 0x3a

    invoke-direct {p0, v10}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->assertCurrentIs(C)V

    .line 165
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    .line 166
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->parseNumber()I

    move-result v10

    int-to-long v8, v10

    .line 167
    .local v8, "seconds":J
    int-to-long v10, v2

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    add-long/2addr v10, v4

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    add-long/2addr v10, v8

    const-wide/16 v12, 0x3e8

    mul-long v6, v10, v12

    .line 171
    .end local v2    # "hours":I
    .end local v4    # "minutes":J
    .end local v8    # "seconds":J
    .local v6, "ms":J
    :goto_0
    iget-char v10, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->current:C

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    .line 173
    const/16 v0, 0x64

    .line 174
    .local v0, "exp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v10, 0x3

    if-gt v3, v10, :cond_1

    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->isDigit()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->digitValue()I

    move-result v10

    mul-int/2addr v10, v0

    int-to-long v10, v10

    add-long/2addr v6, v10

    .line 174
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 169
    .end local v0    # "exp":I
    .end local v3    # "i":I
    .end local v6    # "ms":J
    :cond_0
    int-to-long v10, v1

    const-wide/16 v12, 0x3e8

    mul-long v6, v10, v12

    .restart local v6    # "ms":J
    goto :goto_0

    .line 178
    .restart local v0    # "exp":I
    .restart local v3    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->parseNumber()I

    .line 180
    .end local v0    # "exp":I
    .end local v3    # "i":I
    :cond_2
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->assertCurrentIs(C)V

    .line 181
    return-wide v6
.end method

.method private parseNumber()I
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    .local v0, "retval":I
    :goto_0
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->isDigit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    mul-int/lit8 v0, v0, 0xa

    .line 188
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->digitValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->next()V

    goto :goto_0

    .line 190
    :cond_0
    return v0
.end method
