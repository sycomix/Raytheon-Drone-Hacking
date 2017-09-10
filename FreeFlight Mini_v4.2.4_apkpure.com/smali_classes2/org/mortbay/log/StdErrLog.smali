.class public Lorg/mortbay/log/StdErrLog;
.super Ljava/lang/Object;
.source "StdErrLog.java"

# interfaces
.implements Lorg/mortbay/log/Logger;


# static fields
.field private static __debug:Z

.field private static _dateCache:Lorg/mortbay/util/DateCache;


# instance fields
.field _buffer:Ljava/lang/StringBuffer;

.field private _name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lorg/mortbay/log/StdErrLog;->__debug:Z

    .line 38
    :try_start_0
    new-instance v1, Lorg/mortbay/util/DateCache;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/mortbay/log/StdErrLog;->_dateCache:Lorg/mortbay/util/DateCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 29
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mortbay/log/StdErrLog;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    .line 54
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/mortbay/log/StdErrLog;->_name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private format(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 192
    if-nez p1, :cond_1

    .line 193
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :cond_0
    return-void

    .line 195
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 197
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 198
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 200
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 201
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 195
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_2
    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    .line 203
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 205
    :cond_3
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 208
    :cond_4
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    const/16 v4, 0x20

    .line 150
    if-nez p1, :cond_3

    move v0, v1

    .line 151
    .local v0, "i0":I
    :goto_0
    if-gez v0, :cond_4

    .line 153
    .local v1, "i1":I
    :goto_1
    if-ltz v0, :cond_6

    .line 155
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 156
    if-nez p2, :cond_0

    const-string p2, "null"

    .end local p2    # "arg0":Ljava/lang/Object;
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 158
    if-ltz v1, :cond_5

    .line 160
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 161
    if-nez p3, :cond_1

    const-string p3, "null"

    .end local p3    # "arg1":Ljava/lang/Object;
    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 162
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 188
    :cond_2
    :goto_2
    return-void

    .line 150
    .end local v0    # "i0":I
    .end local v1    # "i1":I
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :cond_3
    const-string v2, "{}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 151
    .restart local v0    # "i0":I
    :cond_4
    const-string v2, "{}"

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 166
    .end local p2    # "arg0":Ljava/lang/Object;
    .restart local v1    # "i1":I
    :cond_5
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 167
    if-eqz p3, :cond_2

    .line 169
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    goto :goto_2

    .line 176
    .restart local p2    # "arg0":Ljava/lang/Object;
    :cond_6
    invoke-direct {p0, p1}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 177
    if-eqz p2, :cond_7

    .line 179
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 182
    :cond_7
    if-eqz p3, :cond_2

    .line 184
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private format(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 214
    if-nez p1, :cond_1

    .line 215
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :cond_0
    return-void

    .line 218
    :cond_1
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 221
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 223
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    const-string v3, "\n\tat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private tag(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "d"    # Ljava/lang/String;
    .param p2, "ms"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 138
    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const/16 v0, 0x63

    if-le p2, v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    :goto_0
    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    return-void

    .line 141
    :cond_0
    const/16 v0, 0x9

    if-le p2, v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    const-string v1, ".00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 97
    sget-boolean v2, Lorg/mortbay/log/StdErrLog;->__debug:Z

    if-eqz v2, :cond_0

    .line 99
    sget-object v2, Lorg/mortbay/log/StdErrLog;->_dateCache:Lorg/mortbay/util/DateCache;

    invoke-virtual {v2}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "d":Ljava/lang/String;
    sget-object v2, Lorg/mortbay/log/StdErrLog;->_dateCache:Lorg/mortbay/util/DateCache;

    invoke-virtual {v2}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v1

    .line 101
    .local v1, "ms":I
    iget-object v3, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    monitor-enter v3

    .line 103
    :try_start_0
    const-string v2, ":DBUG:"

    invoke-direct {p0, v0, v1, v2}, Lorg/mortbay/log/StdErrLog;->tag(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    monitor-exit v3

    .line 108
    .end local v0    # "d":Ljava/lang/String;
    .end local v1    # "ms":I
    :cond_0
    return-void

    .line 106
    .restart local v0    # "d":Ljava/lang/String;
    .restart local v1    # "ms":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    sget-boolean v2, Lorg/mortbay/log/StdErrLog;->__debug:Z

    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Lorg/mortbay/log/StdErrLog;->_dateCache:Lorg/mortbay/util/DateCache;

    invoke-virtual {v2}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "d":Ljava/lang/String;
    sget-object v2, Lorg/mortbay/log/StdErrLog;->_dateCache:Lorg/mortbay/util/DateCache;

    invoke-virtual {v2}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v1

    .line 85
    .local v1, "ms":I
    iget-object v3, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    monitor-enter v3

    .line 87
    :try_start_0
    const-string v2, ":DBUG:"

    invoke-direct {p0, v0, v1, v2}, Lorg/mortbay/log/StdErrLog;->tag(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    invoke-direct {p0, p1}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/Throwable;)V

    .line 90
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    monitor-exit v3

    .line 93
    .end local v0    # "d":Ljava/lang/String;
    .end local v1    # "ms":I
    :cond_0
    return-void

    .line 91
    .restart local v0    # "d":Ljava/lang/String;
    .restart local v1    # "ms":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 231
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    .end local p0    # "this":Lorg/mortbay/log/StdErrLog;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/mortbay/log/StdErrLog;
    :cond_2
    new-instance p0, Lorg/mortbay/log/StdErrLog;

    .end local p0    # "this":Lorg/mortbay/log/StdErrLog;
    invoke-direct {p0, p1}, Lorg/mortbay/log/StdErrLog;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 69
    sget-object v2, Lorg/mortbay/log/StdErrLog;->_dateCache:Lorg/mortbay/util/DateCache;

    invoke-virtual {v2}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "d":Ljava/lang/String;
    sget-object v2, Lorg/mortbay/log/StdErrLog;->_dateCache:Lorg/mortbay/util/DateCache;

    invoke-virtual {v2}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v1

    .line 71
    .local v1, "ms":I
    iget-object v3, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    monitor-enter v3

    .line 73
    :try_start_0
    const-string v2, ":INFO:"

    invoke-direct {p0, v0, v1, v2}, Lorg/mortbay/log/StdErrLog;->tag(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    monitor-exit v3

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lorg/mortbay/log/StdErrLog;->__debug:Z

    return v0
.end method

.method public setDebugEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 64
    sput-boolean p1, Lorg/mortbay/log/StdErrLog;->__debug:Z

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "STDERR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 112
    sget-object v2, Lorg/mortbay/log/StdErrLog;->_dateCache:Lorg/mortbay/util/DateCache;

    invoke-virtual {v2}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "d":Ljava/lang/String;
    sget-object v2, Lorg/mortbay/log/StdErrLog;->_dateCache:Lorg/mortbay/util/DateCache;

    invoke-virtual {v2}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v1

    .line 114
    .local v1, "ms":I
    iget-object v3, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    monitor-enter v3

    .line 116
    :try_start_0
    const-string v2, ":WARN:"

    invoke-direct {p0, v0, v1, v2}, Lorg/mortbay/log/StdErrLog;->tag(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    monitor-exit v3

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    sget-object v2, Lorg/mortbay/log/StdErrLog;->_dateCache:Lorg/mortbay/util/DateCache;

    invoke-virtual {v2}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "d":Ljava/lang/String;
    sget-object v2, Lorg/mortbay/log/StdErrLog;->_dateCache:Lorg/mortbay/util/DateCache;

    invoke-virtual {v2}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v1

    .line 126
    .local v1, "ms":I
    iget-object v3, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    monitor-enter v3

    .line 128
    :try_start_0
    const-string v2, ":WARN:"

    invoke-direct {p0, v0, v1, v2}, Lorg/mortbay/log/StdErrLog;->tag(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    invoke-direct {p0, p1}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p2}, Lorg/mortbay/log/StdErrLog;->format(Ljava/lang/Throwable;)V

    .line 131
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/mortbay/log/StdErrLog;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    monitor-exit v3

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
