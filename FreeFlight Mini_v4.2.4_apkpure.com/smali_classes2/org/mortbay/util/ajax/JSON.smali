.class public Lorg/mortbay/util/ajax/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/util/ajax/JSON$Literal;,
        Lorg/mortbay/util/ajax/JSON$Generator;,
        Lorg/mortbay/util/ajax/JSON$Convertor;,
        Lorg/mortbay/util/ajax/JSON$Convertible;,
        Lorg/mortbay/util/ajax/JSON$Output;,
        Lorg/mortbay/util/ajax/JSON$ReaderSource;,
        Lorg/mortbay/util/ajax/JSON$StringSource;,
        Lorg/mortbay/util/ajax/JSON$Source;
    }
.end annotation


# static fields
.field private static __default:Lorg/mortbay/util/ajax/JSON;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

.field static class$org$mortbay$util$ajax$JSON$Convertible:Ljava/lang/Class;


# instance fields
.field private _convertors:Ljava/util/Map;

.field private _stringBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lorg/mortbay/util/ajax/JSON;

    invoke-direct {v0}, Lorg/mortbay/util/ajax/JSON;-><init>()V

    sput-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    .line 78
    const/16 v0, 0x100

    iput v0, p0, Lorg/mortbay/util/ajax/JSON;->_stringBufferSize:I

    .line 83
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 511
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method protected static complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V
    .locals 6
    .param p0, "seek"    # Ljava/lang/String;
    .param p1, "source"    # Lorg/mortbay/util/ajax/JSON$Source;

    .prologue
    .line 1178
    const/4 v1, 0x0

    .line 1179
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1181
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v0

    .line 1182
    .local v0, "c":C
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v0, v3, :cond_0

    .line 1183
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unexpected \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " while seeking  \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move v1, v2

    .line 1184
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 1186
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1187
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Expected \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1188
    :cond_2
    return-void
.end method

.method public static getDefault()Lorg/mortbay/util/ajax/JSON;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/mortbay/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "stripOuterComment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/mortbay/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 3
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/Reader;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "stripOuterComment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "stripOuterComment"    # Z

    .prologue
    .line 174
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static registerConvertor(Ljava/lang/Class;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    .locals 1
    .param p0, "forClass"    # Ljava/lang/Class;
    .param p1, "convertor"    # Lorg/mortbay/util/ajax/JSON$Convertor;

    .prologue
    .line 115
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0, p0, p1}, Lorg/mortbay/util/ajax/JSON;->addConvertor(Ljava/lang/Class;Lorg/mortbay/util/ajax/JSON$Convertor;)V

    .line 116
    return-void
.end method

.method public static setDefault(Lorg/mortbay/util/ajax/JSON;)V
    .locals 0
    .param p0, "json"    # Lorg/mortbay/util/ajax/JSON;

    .prologue
    .line 125
    sput-object p0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    .line 126
    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 131
    .local v0, "buffer":Ljava/lang/StringBuffer;
    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/util/Map;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 141
    .local v0, "buffer":Ljava/lang/StringBuffer;
    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/mortbay/util/ajax/JSON;->appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 151
    .local v0, "buffer":Ljava/lang/StringBuffer;
    monitor-enter v0

    .line 153
    :try_start_0
    sget-object v1, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/mortbay/util/ajax/JSON;->appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addConvertor(Ljava/lang/Class;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    .locals 2
    .param p1, "forClass"    # Ljava/lang/Class;
    .param p2, "convertor"    # Lorg/mortbay/util/ajax/JSON$Convertor;

    .prologue
    .line 541
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-void
.end method

.method public addConvertorFor(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "convertor"    # Lorg/mortbay/util/ajax/JSON$Convertor;

    .prologue
    .line 581
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 250
    if-nez p2, :cond_0

    .line 251
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 252
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v1, p2, Lorg/mortbay/util/ajax/JSON$Convertible;

    if-eqz v1, :cond_1

    .line 253
    check-cast p2, Lorg/mortbay/util/ajax/JSON$Convertible;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertible;)V

    goto :goto_0

    .line 254
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p2, Lorg/mortbay/util/ajax/JSON$Generator;

    if-eqz v1, :cond_2

    .line 255
    check-cast p2, Lorg/mortbay/util/ajax/JSON$Generator;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Generator;)V

    goto :goto_0

    .line 256
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 257
    check-cast p2, Ljava/util/Map;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    goto :goto_0

    .line 258
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_4

    .line 259
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendArray(Ljava/lang/StringBuffer;Ljava/util/Collection;)V

    goto :goto_0

    .line 260
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 261
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_5
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_6

    .line 263
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V

    goto :goto_0

    .line 264
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 265
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendBoolean(Ljava/lang/StringBuffer;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 266
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_7
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 267
    check-cast p2, Ljava/lang/String;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v0

    .line 271
    .local v0, "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    if-eqz v0, :cond_9

    .line 272
    invoke-virtual {p0, p1, v0, p2}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/mortbay/util/ajax/JSON;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "array"    # Ljava/lang/Object;

    .prologue
    .line 426
    if-nez p2, :cond_0

    .line 428
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 443
    :goto_0
    return-void

    .line 432
    :cond_0
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 433
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 435
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 437
    if-eqz v0, :cond_1

    .line 438
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 439
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/util/Collection;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "collection"    # Ljava/util/Collection;

    .prologue
    .line 403
    if-nez p2, :cond_0

    .line 405
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 422
    :goto_0
    return-void

    .line 409
    :cond_0
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 411
    .local v1, "iter":Ljava/util/Iterator;
    const/4 v0, 0x1

    .line 412
    .local v0, "first":Z
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    if-nez v0, :cond_1

    .line 415
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 417
    :cond_1
    const/4 v0, 0x0

    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_1

    .line 421
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendBoolean(Ljava/lang/StringBuffer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 447
    if-nez p2, :cond_0

    .line 449
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v0, "false"

    goto :goto_1
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertible;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "converter"    # Lorg/mortbay/util/ajax/JSON$Convertible;

    .prologue
    const/16 v3, 0x7b

    const/4 v2, 0x0

    .line 300
    const/4 v1, 0x1

    new-array v0, v1, [C

    aput-char v3, v0, v2

    .line 302
    .local v0, "c":[C
    new-instance v1, Lorg/mortbay/util/ajax/JSON$2;

    invoke-direct {v1, p0, v0, p1}, Lorg/mortbay/util/ajax/JSON$2;-><init>(Lorg/mortbay/util/ajax/JSON;[CLjava/lang/StringBuffer;)V

    invoke-interface {p2, v1}, Lorg/mortbay/util/ajax/JSON$Convertible;->toJSON(Lorg/mortbay/util/ajax/JSON$Output;)V

    .line 367
    aget-char v1, v0, v2

    if-ne v1, v3, :cond_1

    .line 368
    const-string v1, "{}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    aget-char v1, v0, v2

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "convertor"    # Lorg/mortbay/util/ajax/JSON$Convertor;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 285
    new-instance v0, Lorg/mortbay/util/ajax/JSON$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/mortbay/util/ajax/JSON$1;-><init>(Lorg/mortbay/util/ajax/JSON;Lorg/mortbay/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertible;)V

    .line 296
    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Generator;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "generator"    # Lorg/mortbay/util/ajax/JSON$Generator;

    .prologue
    .line 375
    invoke-interface {p2, p1}, Lorg/mortbay/util/ajax/JSON$Generator;->addJSON(Ljava/lang/StringBuffer;)V

    .line 376
    return-void
.end method

.method public appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/util/Map;

    .prologue
    .line 380
    if-nez p2, :cond_0

    .line 382
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 399
    :goto_0
    return-void

    .line 386
    :cond_0
    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 388
    .local v1, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 391
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 392
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 393
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 394
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 398
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_2
    const/16 v2, 0x7d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendNull(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 280
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    return-void
.end method

.method public appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "number"    # Ljava/lang/Number;

    .prologue
    .line 457
    if-nez p2, :cond_0

    .line 459
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 463
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 467
    if-nez p2, :cond_0

    .line 469
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 474
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-static {p1, p2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected contextFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON;
    .locals 0
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 506
    return-object p0
.end method

.method protected contextForArray()Lorg/mortbay/util/ajax/JSON;
    .locals 0

    .prologue
    .line 501
    return-object p0
.end method

.method protected convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 511
    if-eqz p1, :cond_1

    sget-object v3, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON$Convertible:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "org.mortbay.util.ajax.JSON$Convertible"

    invoke-static {v3}, Lorg/mortbay/util/ajax/JSON;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON$Convertible:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSON$Convertible;

    .line 516
    .local v0, "conv":Lorg/mortbay/util/ajax/JSON$Convertible;
    invoke-interface {v0, p2}, Lorg/mortbay/util/ajax/JSON$Convertible;->fromJSON(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v0    # "conv":Lorg/mortbay/util/ajax/JSON$Convertible;
    :goto_1
    return-object v0

    .line 511
    :cond_0
    sget-object v3, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON$Convertible:Ljava/lang/Class;

    goto :goto_0

    .line 519
    :catch_0
    move-exception v2

    .line 521
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 525
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v1

    .line 526
    .local v1, "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    if-eqz v1, :cond_2

    .line 528
    invoke-interface {v1, p2}, Lorg/mortbay/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 530
    goto :goto_1
.end method

.method public fromJSON(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 239
    new-instance v0, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-direct {v0, p1}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "source":Lorg/mortbay/util/ajax/JSON$Source;
    invoke-virtual {p0, v0}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;
    .locals 7
    .param p1, "forClass"    # Ljava/lang/Class;

    .prologue
    .line 554
    move-object v0, p1

    .line 555
    .local v0, "cls":Ljava/lang/Class;
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/util/ajax/JSON$Convertor;

    .line 556
    .local v1, "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    if-nez v1, :cond_0

    sget-object v5, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    if-eq p0, v5, :cond_0

    .line 557
    sget-object v5, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v5, v0}, Lorg/mortbay/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v1

    .line 559
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    sget-object v5, Lorg/mortbay/util/ajax/JSON;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v5, :cond_1

    const-string v5, "java.lang.Object"

    invoke-static {v5}, Lorg/mortbay/util/ajax/JSON;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/ajax/JSON;->class$java$lang$Object:Ljava/lang/Class;

    :goto_1
    if-eq v0, v5, :cond_3

    .line 561
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 562
    .local v4, "ifs":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .line 563
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_2
    if-nez v1, :cond_2

    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 564
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    check-cast v1, Lorg/mortbay/util/ajax/JSON$Convertor;

    .restart local v1    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 559
    .end local v3    # "i":I
    .end local v4    # "ifs":[Ljava/lang/Class;
    :cond_1
    sget-object v5, Lorg/mortbay/util/ajax/JSON;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_1

    .line 565
    .restart local v3    # "i":I
    .restart local v4    # "ifs":[Ljava/lang/Class;
    :cond_2
    if-nez v1, :cond_0

    .line 567
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 568
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    check-cast v1, Lorg/mortbay/util/ajax/JSON$Convertor;

    .restart local v1    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    goto :goto_0

    .line 571
    .end local v3    # "i":I
    .end local v4    # "ifs":[Ljava/lang/Class;
    :cond_3
    return-object v1
.end method

.method public getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 592
    move-object v0, p1

    .line 593
    .local v0, "clsName":Ljava/lang/String;
    iget-object v2, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/util/ajax/JSON$Convertor;

    .line 594
    .local v1, "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    if-nez v1, :cond_0

    sget-object v2, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    if-eq p0, v2, :cond_0

    .line 595
    sget-object v2, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v2, v0}, Lorg/mortbay/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v1

    .line 596
    :cond_0
    return-object v1
.end method

.method public getStringBufferSize()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/mortbay/util/ajax/JSON;->_stringBufferSize:I

    return v0
.end method

.method protected handleUnknown(Lorg/mortbay/util/ajax/JSON$Source;C)Ljava/lang/Object;
    .locals 3
    .param p1, "source"    # Lorg/mortbay/util/ajax/JSON$Source;
    .param p2, "c"    # C

    .prologue
    .line 788
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unknown char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 496
    new-array v0, p1, [Ljava/lang/Object;

    return-object v0
.end method

.method protected newMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 5
    .param p1, "source"    # Lorg/mortbay/util/ajax/JSON$Source;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 689
    const/4 v1, 0x0

    .line 691
    .local v1, "comment_state":I
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 693
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 696
    .local v0, "c":C
    if-ne v1, v4, :cond_1

    .line 698
    sparse-switch v0, :sswitch_data_0

    .line 780
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 701
    :sswitch_0
    const/4 v1, -0x1

    .line 702
    goto :goto_1

    .line 704
    :sswitch_1
    const/4 v1, 0x2

    goto :goto_1

    .line 708
    :cond_1
    if-le v1, v4, :cond_3

    .line 710
    sparse-switch v0, :sswitch_data_1

    .line 722
    const/4 v1, 0x2

    goto :goto_1

    .line 713
    :sswitch_2
    const/4 v1, 0x3

    .line 714
    goto :goto_1

    .line 716
    :sswitch_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 717
    const/4 v1, 0x0

    goto :goto_1

    .line 719
    :cond_2
    const/4 v1, 0x2

    .line 720
    goto :goto_1

    .line 726
    :cond_3
    if-gez v1, :cond_4

    .line 728
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 732
    :pswitch_1
    const/4 v1, 0x0

    .line 733
    goto :goto_1

    .line 741
    :cond_4
    sparse-switch v0, :sswitch_data_2

    .line 773
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 774
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseNumber(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object v2

    .line 783
    .end local v0    # "c":C
    :cond_5
    :goto_2
    return-object v2

    .line 744
    .restart local v0    # "c":C
    :sswitch_4
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseObject(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 746
    :sswitch_5
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseArray(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 748
    :sswitch_6
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseString(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 750
    :sswitch_7
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseNumber(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object v2

    goto :goto_2

    .line 753
    :sswitch_8
    const-string v3, "null"

    invoke-static {v3, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    goto :goto_2

    .line 756
    :sswitch_9
    const-string v2, "true"

    invoke-static {v2, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    .line 757
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 759
    :sswitch_a
    const-string v2, "false"

    invoke-static {v2, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    .line 760
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 762
    :sswitch_b
    const-string v3, "undefined"

    invoke-static {v3, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    goto :goto_2

    .line 765
    :sswitch_c
    const-string v3, "NaN"

    invoke-static {v3, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    goto :goto_2

    .line 769
    :sswitch_d
    const/4 v1, 0x1

    .line 770
    goto :goto_1

    .line 775
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 777
    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/ajax/JSON;->handleUnknown(Lorg/mortbay/util/ajax/JSON$Source;C)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 698
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch

    .line 710
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch

    .line 728
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 741
    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_6
        0x2d -> :sswitch_7
        0x2f -> :sswitch_d
        0x4e -> :sswitch_c
        0x5b -> :sswitch_5
        0x66 -> :sswitch_a
        0x6e -> :sswitch_8
        0x74 -> :sswitch_9
        0x75 -> :sswitch_b
        0x7b -> :sswitch_4
    .end sparse-switch
.end method

.method public parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;
    .locals 6
    .param p1, "source"    # Lorg/mortbay/util/ajax/JSON$Source;
    .param p2, "stripOuterComment"    # Z

    .prologue
    const/4 v5, 0x1

    .line 601
    const/4 v1, 0x0

    .line 602
    .local v1, "comment_state":I
    if-nez p2, :cond_1

    .line 603
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v2

    .line 683
    :cond_0
    :goto_0
    return-object v2

    .line 605
    :cond_1
    const/4 v3, 0x1

    .line 607
    .local v3, "strip_state":I
    const/4 v2, 0x0

    .line 608
    :goto_1
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 610
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 613
    .local v0, "c":C
    if-ne v1, v5, :cond_3

    .line 615
    sparse-switch v0, :sswitch_data_0

    .line 680
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_1

    .line 618
    :sswitch_0
    const/4 v1, -0x1

    .line 619
    goto :goto_2

    .line 621
    :sswitch_1
    const/4 v1, 0x2

    .line 622
    if-ne v3, v5, :cond_2

    .line 624
    const/4 v1, 0x0

    .line 625
    const/4 v3, 0x2

    goto :goto_2

    .line 630
    :cond_3
    if-le v1, v5, :cond_5

    .line 632
    sparse-switch v0, :sswitch_data_1

    .line 648
    const/4 v1, 0x2

    goto :goto_2

    .line 635
    :sswitch_2
    const/4 v1, 0x3

    .line 636
    goto :goto_2

    .line 638
    :sswitch_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 640
    const/4 v1, 0x0

    .line 641
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 645
    :cond_4
    const/4 v1, 0x2

    .line 646
    goto :goto_2

    .line 652
    :cond_5
    if-gez v1, :cond_6

    .line 654
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 658
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_2

    .line 666
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 668
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_7

    .line 669
    const/4 v1, 0x1

    goto :goto_2

    .line 670
    :cond_7
    const/16 v4, 0x2a

    if-ne v0, v4, :cond_8

    .line 671
    const/4 v1, 0x3

    goto :goto_2

    .line 672
    :cond_8
    if-nez v2, :cond_2

    .line 674
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v2

    .line 675
    .local v2, "o":Ljava/lang/Object;
    goto :goto_1

    .line 615
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch

    .line 632
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch

    .line 654
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected parseArray(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 10
    .param p1, "source"    # Lorg/mortbay/util/ajax/JSON$Source;

    .prologue
    const/4 v9, 0x0

    .line 841
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v7

    const/16 v8, 0x5b

    if-eq v7, v8, :cond_0

    .line 842
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 844
    :cond_0
    const/4 v5, 0x0

    .line 845
    .local v5, "size":I
    const/4 v4, 0x0

    .line 846
    .local v4, "list":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 847
    .local v3, "item":Ljava/lang/Object;
    const/4 v2, 0x1

    .line 849
    .end local v3    # "item":Ljava/lang/Object;
    .local v2, "coma":Z
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 851
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v1

    .line 852
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 876
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 877
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 855
    :sswitch_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    .line 856
    packed-switch v5, :pswitch_data_0

    .line 865
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/mortbay/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 859
    :pswitch_0
    invoke-virtual {p0, v9}, Lorg/mortbay/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 861
    :pswitch_1
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lorg/mortbay/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 862
    .local v0, "array":[Ljava/lang/Object;
    invoke-static {v0, v9, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 869
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_1
    if-eqz v2, :cond_1

    .line 870
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 871
    :cond_1
    const/4 v2, 0x1

    .line 872
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 880
    :cond_2
    const/4 v2, 0x0

    .line 881
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "size":I
    .local v6, "size":I
    if-nez v5, :cond_3

    .line 882
    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->contextForArray()Lorg/mortbay/util/ajax/JSON;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "item":Ljava/lang/Object;
    move v5, v6

    .end local v6    # "size":I
    .restart local v5    # "size":I
    goto :goto_0

    .line 883
    .end local v3    # "item":Ljava/lang/Object;
    .end local v5    # "size":I
    .restart local v6    # "size":I
    :cond_3
    if-nez v4, :cond_4

    .line 885
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "list":Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .restart local v4    # "list":Ljava/util/ArrayList;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->contextForArray()Lorg/mortbay/util/ajax/JSON;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v3

    .line 888
    .restart local v3    # "item":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    const/4 v3, 0x0

    move v5, v6

    .end local v6    # "size":I
    .restart local v5    # "size":I
    goto :goto_0

    .line 893
    .end local v3    # "item":Ljava/lang/Object;
    .end local v5    # "size":I
    .restart local v6    # "size":I
    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->contextForArray()Lorg/mortbay/util/ajax/JSON;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v3

    .line 894
    .restart local v3    # "item":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    const/4 v3, 0x0

    move v5, v6

    .end local v6    # "size":I
    .restart local v5    # "size":I
    goto :goto_0

    .line 902
    .end local v1    # "c":C
    .end local v3    # "item":Ljava/lang/Object;
    :cond_5
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "unexpected end of array"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 852
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch

    .line 856
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseNumber(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Number;
    .locals 10
    .param p1, "source"    # Lorg/mortbay/util/ajax/JSON$Source;

    .prologue
    .line 1058
    const/4 v2, 0x0

    .line 1059
    .local v2, "minus":Z
    const-wide/16 v4, 0x0

    .line 1060
    .local v4, "number":J
    const/4 v0, 0x0

    .line 1062
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1064
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v1

    .line 1065
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 1105
    .end local v1    # "c":C
    :cond_0
    :goto_1
    if-nez v0, :cond_4

    .line 1106
    if-eqz v2, :cond_1

    const-wide/16 v6, -0x1

    mul-long/2addr v4, v6

    .end local v4    # "number":J
    :cond_1
    invoke-static {v4, v5}, Lorg/mortbay/util/TypeUtil;->newLong(J)Ljava/lang/Long;

    move-result-object v3

    .line 1138
    :goto_2
    return-object v3

    .line 1077
    .restart local v1    # "c":C
    .restart local v4    # "number":J
    :sswitch_0
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    add-int/lit8 v3, v1, -0x30

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 1078
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1083
    :sswitch_1
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 1084
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "bad number"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1085
    :cond_2
    const/4 v2, 0x1

    .line 1086
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1092
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    const/16 v3, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1093
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    if-eqz v2, :cond_3

    .line 1094
    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1095
    :cond_3
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1096
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1097
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_1

    .line 1108
    .end local v1    # "c":C
    :cond_4
    monitor-enter v0

    .line 1110
    :goto_3
    :try_start_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1112
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v1

    .line 1113
    .restart local v1    # "c":C
    sparse-switch v1, :sswitch_data_1

    .line 1138
    .end local v1    # "c":C
    :cond_5
    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_2

    .line 1139
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1130
    .restart local v1    # "c":C
    :sswitch_3
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1131
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1065
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch

    .line 1113
    :sswitch_data_1
    .sparse-switch
        0x2b -> :sswitch_3
        0x2d -> :sswitch_3
        0x2e -> :sswitch_3
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x35 -> :sswitch_3
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
        0x38 -> :sswitch_3
        0x39 -> :sswitch_3
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method protected parseObject(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 10
    .param p1, "source"    # Lorg/mortbay/util/ajax/JSON$Source;

    .prologue
    const/16 v9, 0x7d

    .line 793
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v7

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_0

    .line 794
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 795
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->newMap()Ljava/util/Map;

    move-result-object v3

    .line 797
    .local v3, "map":Ljava/util/Map;
    const-string v7, "\"}"

    invoke-virtual {p0, v7, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C

    move-result v5

    .line 799
    .local v5, "next":C
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 801
    if-ne v5, v9, :cond_3

    .line 803
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    .line 822
    :cond_1
    const-string v7, "class"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 823
    .local v1, "classname":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 827
    :try_start_0
    sget-object v7, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    if-nez v7, :cond_4

    const-string v7, "org.mortbay.util.ajax.JSON"

    invoke-static {v7}, Lorg/mortbay/util/ajax/JSON;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    :goto_1
    invoke-static {v7, v1}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 828
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {p0, v0, v3}, Lorg/mortbay/util/ajax/JSON;->convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 835
    .end local v0    # "c":Ljava/lang/Class;
    .end local v3    # "map":Ljava/util/Map;
    :cond_2
    :goto_2
    return-object v3

    .line 807
    .end local v1    # "classname":Ljava/lang/String;
    .restart local v3    # "map":Ljava/util/Map;
    :cond_3
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseString(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object v4

    .line 808
    .local v4, "name":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {p0, v7, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(CLorg/mortbay/util/ajax/JSON$Source;)V

    .line 809
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    .line 811
    invoke-virtual {p0, v4}, Lorg/mortbay/util/ajax/JSON;->contextFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v6

    .line 812
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v7, ",}"

    invoke-virtual {p0, v7, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C

    .line 815
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v5

    .line 816
    if-eq v5, v9, :cond_1

    .line 819
    const-string v7, "\"}"

    invoke-virtual {p0, v7, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C

    move-result v5

    .line 820
    goto :goto_0

    .line 827
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    .restart local v1    # "classname":Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-object v7, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 830
    :catch_0
    move-exception v2

    .line 832
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method protected parseString(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/String;
    .locals 14
    .param p1, "source"    # Lorg/mortbay/util/ajax/JSON$Source;

    .prologue
    const/16 v13, 0x9

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/16 v10, 0x5c

    const/16 v9, 0x22

    .line 908
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v7

    if-eq v7, v9, :cond_0

    .line 909
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 911
    :cond_0
    const/4 v2, 0x0

    .line 913
    .local v2, "escape":Z
    const/4 v0, 0x0

    .line 914
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->scratchBuffer()[C

    move-result-object v5

    .line 916
    .local v5, "scratch":[C
    if-eqz v5, :cond_6

    .line 918
    const/4 v3, 0x0

    .line 919
    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 921
    array-length v7, v5

    if-lt v3, v7, :cond_2

    .line 925
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "b":Ljava/lang/StringBuffer;
    array-length v7, v5

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 926
    .restart local v0    # "b":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v5, v11, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 987
    :cond_1
    if-nez v0, :cond_7

    .line 988
    invoke-virtual {p0, v5, v11, v3}, Lorg/mortbay/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v7

    .line 1052
    .end local v3    # "i":I
    :goto_1
    return-object v7

    .line 930
    .restart local v3    # "i":I
    :cond_2
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v1

    .line 932
    .local v1, "c":C
    if-eqz v2, :cond_3

    .line 934
    const/4 v2, 0x0

    .line 935
    sparse-switch v1, :sswitch_data_0

    .line 969
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aput-char v1, v5, v3

    :goto_2
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 938
    :sswitch_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aput-char v9, v5, v3

    move v3, v4

    .line 939
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 941
    :sswitch_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aput-char v10, v5, v3

    move v3, v4

    .line 942
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 944
    :sswitch_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    const/16 v7, 0x2f

    aput-char v7, v5, v3

    move v3, v4

    .line 945
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 947
    :sswitch_3
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aput-char v12, v5, v3

    move v3, v4

    .line 948
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 950
    :sswitch_4
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    const/16 v7, 0xc

    aput-char v7, v5, v3

    move v3, v4

    .line 951
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 953
    :sswitch_5
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    const/16 v7, 0xa

    aput-char v7, v5, v3

    move v3, v4

    .line 954
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 956
    :sswitch_6
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    const/16 v7, 0xd

    aput-char v7, v5, v3

    move v3, v4

    .line 957
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 959
    :sswitch_7
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aput-char v13, v5, v3

    move v3, v4

    .line 960
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 962
    :sswitch_8
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v7

    shl-int/lit8 v7, v7, 0xc

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    add-int/2addr v7, v8

    int-to-char v6, v7

    .line 966
    .local v6, "uc":C
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aput-char v6, v5, v3

    move v3, v4

    .line 967
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 972
    .end local v6    # "uc":C
    :cond_3
    if-ne v1, v10, :cond_4

    .line 974
    const/4 v2, 0x1

    .line 975
    goto/16 :goto_0

    .line 977
    :cond_4
    if-ne v1, v9, :cond_5

    .line 980
    invoke-virtual {p0, v5, v11, v3}, Lorg/mortbay/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 983
    :cond_5
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aput-char v1, v5, v3

    goto :goto_2

    .line 991
    .end local v1    # "c":C
    .end local v4    # "i":I
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 995
    .restart local v0    # "b":Ljava/lang/StringBuffer;
    :cond_7
    monitor-enter v0

    .line 997
    :goto_3
    :try_start_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 999
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v1

    .line 1001
    .restart local v1    # "c":C
    if-eqz v2, :cond_8

    .line 1003
    const/4 v2, 0x0

    .line 1004
    sparse-switch v1, :sswitch_data_1

    .line 1038
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1053
    .end local v1    # "c":C
    :catchall_0
    move-exception v7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1007
    .restart local v1    # "c":C
    :sswitch_9
    const/16 v7, 0x22

    :try_start_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1010
    :sswitch_a
    const/16 v7, 0x5c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1013
    :sswitch_b
    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1016
    :sswitch_c
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1019
    :sswitch_d
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1022
    :sswitch_e
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1025
    :sswitch_f
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1028
    :sswitch_10
    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1031
    :sswitch_11
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v7

    shl-int/lit8 v7, v7, 0xc

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    add-int/2addr v7, v8

    int-to-char v6, v7

    .line 1035
    .restart local v6    # "uc":C
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1041
    .end local v6    # "uc":C
    :cond_8
    if-ne v1, v10, :cond_9

    .line 1043
    const/4 v2, 0x1

    .line 1044
    goto :goto_3

    .line 1046
    :cond_9
    if-ne v1, v9, :cond_b

    .line 1052
    .end local v1    # "c":C
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    monitor-exit v0

    goto/16 :goto_1

    .line 1049
    .restart local v1    # "c":C
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 935
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_8
    .end sparse-switch

    .line 1004
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_9
        0x2f -> :sswitch_b
        0x5c -> :sswitch_a
        0x62 -> :sswitch_c
        0x66 -> :sswitch_d
        0x6e -> :sswitch_e
        0x72 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
    .end sparse-switch
.end method

.method protected seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C
    .locals 4
    .param p1, "seek"    # Ljava/lang/String;
    .param p2, "source"    # Lorg/mortbay/util/ajax/JSON$Source;

    .prologue
    .line 1160
    :goto_0
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1162
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 1163
    .local v0, "c":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1165
    return v0

    .line 1168
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1169
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unexpected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' while seeking one of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1170
    :cond_1
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1173
    .end local v0    # "c":C
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected one of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected seekTo(CLorg/mortbay/util/ajax/JSON$Source;)V
    .locals 4
    .param p1, "seek"    # C
    .param p2, "source"    # Lorg/mortbay/util/ajax/JSON$Source;

    .prologue
    .line 1144
    :goto_0
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1146
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 1147
    .local v0, "c":C
    if-ne v0, p1, :cond_0

    .line 1148
    return-void

    .line 1150
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1151
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unexpected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " while seeking \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1152
    :cond_1
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1155
    .end local v0    # "c":C
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setStringBufferSize(I)V
    .locals 0
    .param p1, "stringBufferSize"    # I

    .prologue
    .line 102
    iput p1, p0, Lorg/mortbay/util/ajax/JSON;->_stringBufferSize:I

    .line 103
    return-void
.end method

.method public toJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 225
    .local v0, "buffer":Ljava/lang/StringBuffer;
    monitor-enter v0

    .line 227
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected toString([CII)Ljava/lang/String;
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 486
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
