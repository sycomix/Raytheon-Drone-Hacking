.class public Lorg/mortbay/util/DateCache;
.super Ljava/lang/Object;
.source "DateCache.java"


# static fields
.field public static DEFAULT_FORMAT:Ljava/lang/String;

.field private static __hitWindow:J


# instance fields
.field private _dfs:Ljava/text/DateFormatSymbols;

.field private _formatString:Ljava/lang/String;

.field private _lastMinutes:J

.field private _lastMs:I

.field private _lastResult:Ljava/lang/String;

.field private _lastSeconds:J

.field private _locale:Ljava/util/Locale;

.field private _minFormat:Ljava/text/SimpleDateFormat;

.field private _minFormatString:Ljava/lang/String;

.field private _secFormatString:Ljava/lang/String;

.field private _secFormatString0:Ljava/lang/String;

.field private _secFormatString1:Ljava/lang/String;

.field private _tzFormat:Ljava/text/SimpleDateFormat;

.field private _tzFormatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "EEE MMM dd HH:mm:ss zzz yyyy"

    sput-object v0, Lorg/mortbay/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0xe10

    sput-wide v0, Lorg/mortbay/util/DateCache;->__hitWindow:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lorg/mortbay/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/mortbay/util/DateCache;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    .line 59
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/util/DateCache;->_lastMs:I

    .line 61
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    .line 64
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 83
    iput-object p1, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/text/DateFormatSymbols;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    .line 59
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/util/DateCache;->_lastMs:I

    .line 61
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    .line 64
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 99
    iput-object p1, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 101
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "l"    # Ljava/util/Locale;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    .line 59
    iput-wide v2, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/util/DateCache;->_lastMs:I

    .line 61
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    .line 64
    iput-object v1, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 91
    iput-object p1, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    .line 93
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 94
    return-void
.end method

.method private setMinFormatString()V
    .locals 6

    .prologue
    .line 193
    iget-object v4, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const-string v5, "ss.SSS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, "i":I
    const/4 v1, 0x6

    .line 195
    .local v1, "l":I
    if-ltz v0, :cond_0

    .line 196
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ms not supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    :cond_0
    iget-object v4, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const-string v5, "ss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 198
    const/4 v1, 0x2

    .line 201
    iget-object v4, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "ss1":Ljava/lang/String;
    iget-object v4, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "ss2":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'ss\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/util/DateCache;->_minFormatString:Ljava/lang/String;

    .line 204
    return-void
.end method

.method private setTzFormatString(Ljava/util/TimeZone;)V
    .locals 12
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    const/16 v11, 0x30

    const/16 v10, 0xa

    .line 151
    iget-object v8, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    const-string v9, "ZZZ"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 152
    .local v7, "zIndex":I
    if-ltz v7, :cond_3

    .line 154
    iget-object v8, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "ss1":Ljava/lang/String;
    iget-object v8, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    add-int/lit8 v9, v7, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "ss2":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    .line 158
    .local v6, "tzOffset":I
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v8, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    invoke-direct {v3, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 159
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string v8, "\'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    if-ltz v6, :cond_2

    .line 162
    const/16 v8, 0x2b

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    :goto_0
    const v8, 0xea60

    div-int v2, v6, v8

    .line 170
    .local v2, "raw":I
    div-int/lit8 v0, v2, 0x3c

    .line 171
    .local v0, "hr":I
    rem-int/lit8 v1, v2, 0x3c

    .line 173
    .local v1, "min":I
    if-ge v0, v10, :cond_0

    .line 174
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 176
    if-ge v1, v10, :cond_1

    .line 177
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 179
    const/16 v8, 0x27

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    .line 186
    .end local v0    # "hr":I
    .end local v1    # "min":I
    .end local v2    # "raw":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "ss1":Ljava/lang/String;
    .end local v5    # "ss2":Ljava/lang/String;
    .end local v6    # "tzOffset":I
    :goto_1
    invoke-direct {p0}, Lorg/mortbay/util/DateCache;->setMinFormatString()V

    .line 187
    return-void

    .line 165
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    .restart local v4    # "ss1":Ljava/lang/String;
    .restart local v5    # "ss2":Ljava/lang/String;
    .restart local v6    # "tzOffset":I
    :cond_2
    neg-int v6, v6

    .line 166
    const/16 v8, 0x2d

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 185
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "ss1":Ljava/lang/String;
    .end local v5    # "ss2":Ljava/lang/String;
    .end local v6    # "tzOffset":I
    :cond_3
    iget-object v8, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    iput-object v8, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized format(J)Ljava/lang/String;
    .locals 17
    .param p1, "inDate"    # J

    .prologue
    .line 223
    monitor-enter p0

    const-wide/16 v12, 0x3e8

    :try_start_0
    div-long v10, p1, v12

    .line 226
    .local v10, "seconds":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-lez v9, :cond_1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    sget-wide v14, Lorg/mortbay/util/DateCache;->__hitWindow:J

    add-long/2addr v12, v14

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    .line 230
    :cond_0
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v0, p1

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 231
    .local v2, "d":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 269
    .end local v2    # "d":Ljava/util/Date;
    :goto_0
    monitor-exit p0

    return-object v9

    .line 237
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    cmp-long v9, v12, v10

    if-nez v9, :cond_2

    .line 238
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_2
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v0, p1

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 243
    .restart local v2    # "d":Ljava/util/Date;
    const-wide/16 v12, 0x3c

    div-long v6, v10, v12

    .line 244
    .local v6, "minutes":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    cmp-long v9, v12, v6

    if-eqz v9, :cond_3

    .line 246
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    .line 247
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/mortbay/util/DateCache;->_secFormatString:Ljava/lang/String;

    .line 249
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/util/DateCache;->_secFormatString:Ljava/lang/String;

    const-string v12, "ss"

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 250
    .local v3, "i":I
    const/4 v4, 0x2

    .line 251
    .local v4, "l":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/util/DateCache;->_secFormatString:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/mortbay/util/DateCache;->_secFormatString0:Ljava/lang/String;

    .line 252
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/util/DateCache;->_secFormatString:Ljava/lang/String;

    add-int v12, v3, v4

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/mortbay/util/DateCache;->_secFormatString1:Ljava/lang/String;

    .line 256
    .end local v3    # "i":I
    .end local v4    # "l":I
    :cond_3
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    .line 257
    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/util/DateCache;->_secFormatString:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 258
    .local v8, "sb":Ljava/lang/StringBuffer;
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/util/DateCache;->_secFormatString0:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    const-wide/16 v12, 0x3c

    rem-long v12, v10, v12

    long-to-int v5, v12

    .line 262
    .local v5, "s":I
    const/16 v9, 0xa

    if-ge v5, v9, :cond_4

    .line 263
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    :cond_4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 265
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/util/DateCache;->_secFormatString1:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 267
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/util/DateCache;->_lastResult:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 267
    .end local v5    # "s":I
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    .end local v2    # "d":Ljava/util/Date;
    .end local v6    # "minutes":J
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "seconds":J
    :catchall_1
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "inDate"    # Ljava/util/Date;

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public format(JLjava/lang/StringBuffer;)V
    .locals 1
    .param p1, "inDate"    # J
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 279
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    return-void
.end method

.method public getFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_formatString:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public lastMs()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lorg/mortbay/util/DateCache;->_lastMs:I

    return v0
.end method

.method public now()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 300
    .local v0, "now":J
    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lorg/mortbay/util/DateCache;->_lastMs:I

    .line 301
    invoke-virtual {p0, v0, v1}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 6
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    const-wide/16 v4, -0x1

    .line 110
    invoke-direct {p0, p1}, Lorg/mortbay/util/DateCache;->setTzFormatString(Ljava/util/TimeZone;)V

    .line 111
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 114
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_minFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->_locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    .line 126
    :goto_0
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 127
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 128
    iput-wide v4, p0, Lorg/mortbay/util/DateCache;->_lastSeconds:J

    .line 129
    iput-wide v4, p0, Lorg/mortbay/util/DateCache;->_lastMinutes:J

    .line 130
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 119
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_minFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_tzFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 124
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->_minFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0
.end method

.method public setTimeZoneID(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZoneId"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 146
    return-void
.end method
