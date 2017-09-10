.class public Lorg/mortbay/jetty/InclusiveByteRange;
.super Ljava/lang/Object;
.source "InclusiveByteRange.java"


# instance fields
.field first:J

.field last:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3
    .param p1, "first"    # J
    .param p3, "last"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    .line 48
    iput-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    .line 52
    iput-wide p1, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    .line 53
    iput-wide p3, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    .line 54
    return-void
.end method

.method public static satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;
    .locals 15
    .param p0, "headers"    # Ljava/util/Enumeration;
    .param p1, "size"    # J

    .prologue
    .line 74
    const/4 v8, 0x0

    .line 78
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 80
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 81
    .local v4, "header":Ljava/lang/String;
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v11, "=,"

    const/4 v12, 0x0

    invoke-direct {v10, v4, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    .local v10, "tok":Ljava/util/StringTokenizer;
    const/4 v9, 0x0

    .line 86
    .local v9, "t":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 88
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 90
    const-wide/16 v2, -0x1

    .line 91
    .local v2, "first":J
    const-wide/16 v6, -0x1

    .line 92
    .local v6, "last":J
    const/16 v11, 0x2d

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 93
    .local v0, "d":I
    if-ltz v0, :cond_2

    const-string v11, "-"

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_3

    .line 95
    :cond_2
    const-string v11, "bytes"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 97
    const-string v11, "Bad range format: {}"

    invoke-static {v11, v9}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v0    # "d":I
    .end local v2    # "first":J
    .end local v6    # "last":J
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Bad range format: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 135
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "d":I
    .restart local v2    # "first":J
    .restart local v6    # "last":J
    :cond_3
    if-nez v0, :cond_7

    .line 102
    add-int/lit8 v11, v0, 0x1

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 103
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 118
    :goto_2
    const-wide/16 v12, -0x1

    cmp-long v11, v2, v12

    if-nez v11, :cond_4

    const-wide/16 v12, -0x1

    cmp-long v11, v6, v12

    if-eqz v11, :cond_0

    .line 121
    :cond_4
    const-wide/16 v12, -0x1

    cmp-long v11, v2, v12

    if-eqz v11, :cond_5

    const-wide/16 v12, -0x1

    cmp-long v11, v6, v12

    if-eqz v11, :cond_5

    cmp-long v11, v2, v6

    if-gtz v11, :cond_0

    .line 124
    :cond_5
    cmp-long v11, v2, p1

    if-gez v11, :cond_1

    .line 126
    new-instance v5, Lorg/mortbay/jetty/InclusiveByteRange;

    invoke-direct {v5, v2, v3, v6, v7}, Lorg/mortbay/jetty/InclusiveByteRange;-><init>(JJ)V

    .line 128
    .local v5, "range":Lorg/mortbay/jetty/InclusiveByteRange;
    invoke-static {v8, v5}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "satRanges":Ljava/lang/Object;
    goto/16 :goto_1

    .line 106
    .end local v5    # "range":Lorg/mortbay/jetty/InclusiveByteRange;
    .end local v8    # "satRanges":Ljava/lang/Object;
    :cond_6
    const-string v11, "Bad range format: {}"

    invoke-static {v11, v9}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 110
    :cond_7
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_8

    .line 112
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 113
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_2

    .line 116
    :cond_8
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_2

    .line 138
    .end local v0    # "d":I
    .end local v2    # "first":J
    .end local v4    # "header":Ljava/lang/String;
    .end local v6    # "last":J
    .end local v9    # "t":Ljava/lang/String;
    .end local v10    # "tok":Ljava/util/StringTokenizer;
    :cond_9
    const/4 v11, 0x1

    invoke-static {v8, v11}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v11

    return-object v11
.end method

.method public static to416HeaderRangeString(J)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # J

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "bytes */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getFirst()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    return-wide v0
.end method

.method public getFirst(J)J
    .locals 7
    .param p1, "size"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 144
    iget-wide v2, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 146
    iget-wide v2, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    sub-long v0, p1, v2

    .line 147
    .local v0, "tf":J
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 148
    const-wide/16 v0, 0x0

    .line 151
    .end local v0    # "tf":J
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    goto :goto_0
.end method

.method public getLast()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    return-wide v0
.end method

.method public getLast(J)J
    .locals 7
    .param p1, "size"    # J

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 157
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 158
    sub-long v0, p1, v4

    .line 162
    :goto_0
    return-wide v0

    .line 160
    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    .line 161
    :cond_1
    sub-long v0, p1, v4

    goto :goto_0

    .line 162
    :cond_2
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    goto :goto_0
.end method

.method public getSize(J)J
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getLast(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toHeaderRangeString(J)Ljava/lang/String;
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 176
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 178
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getLast(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 180
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 199
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-wide v2, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    iget-wide v2, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
