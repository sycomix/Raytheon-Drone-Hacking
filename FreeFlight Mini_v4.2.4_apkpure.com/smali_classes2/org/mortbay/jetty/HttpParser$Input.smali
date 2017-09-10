.class public Lorg/mortbay/jetty/HttpParser$Input;
.super Ljavax/servlet/ServletInputStream;
.source "HttpParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/HttpParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Input"
.end annotation


# instance fields
.field protected _content:Lorg/mortbay/io/Buffer;

.field protected _endp:Lorg/mortbay/io/EndPoint;

.field protected _maxIdleTime:J

.field protected _parser:Lorg/mortbay/jetty/HttpParser;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/HttpParser;J)V
    .locals 2
    .param p1, "parser"    # Lorg/mortbay/jetty/HttpParser;
    .param p2, "maxIdleTime"    # J

    .prologue
    .line 1095
    invoke-direct {p0}, Ljavax/servlet/ServletInputStream;-><init>()V

    .line 1096
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    .line 1097
    invoke-static {p1}, Lorg/mortbay/jetty/HttpParser;->access$000(Lorg/mortbay/jetty/HttpParser;)Lorg/mortbay/io/EndPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    .line 1098
    iput-wide p2, p0, Lorg/mortbay/jetty/HttpParser$Input;->_maxIdleTime:J

    .line 1099
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpParser;->access$100(Lorg/mortbay/jetty/HttpParser;)Lorg/mortbay/io/View;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    .line 1100
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-static {v0, p0}, Lorg/mortbay/jetty/HttpParser;->access$202(Lorg/mortbay/jetty/HttpParser;Lorg/mortbay/jetty/HttpParser$Input;)Lorg/mortbay/jetty/HttpParser$Input;

    .line 1101
    return-void
.end method

.method private blockForContent()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1130
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return v1

    .line 1132
    :cond_1
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpParser;->getState()I

    move-result v3

    if-gtz v3, :cond_2

    move v1, v2

    .line 1133
    goto :goto_0

    .line 1136
    :cond_2
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v3, :cond_4

    .line 1137
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    .line 1180
    :cond_3
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 1140
    :cond_4
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v3}, Lorg/mortbay/io/EndPoint;->isBlocking()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1144
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    .line 1147
    :goto_1
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/mortbay/jetty/HttpParser;->isState(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v3}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1150
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpParser;->parseNext()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1153
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v1}, Lorg/mortbay/io/EndPoint;->close()V

    .line 1156
    throw v0

    .line 1161
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    .line 1164
    :cond_6
    :goto_2
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/HttpParser;->isState(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v3}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1166
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v3}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_6

    .line 1169
    :cond_7
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser$Input;->_maxIdleTime:J

    invoke-interface {v3, v4, v5}, Lorg/mortbay/io/EndPoint;->blockReadable(J)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1171
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v1}, Lorg/mortbay/io/EndPoint;->close()V

    .line 1172
    new-instance v1, Lorg/mortbay/jetty/EofException;

    const-string v2, "timeout"

    invoke-direct {v1, v2}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1176
    :cond_8
    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    goto :goto_2
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1189
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1190
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    .line 1194
    :goto_0
    return v0

    .line 1191
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1192
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    .line 1194
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    goto :goto_0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    const/4 v0, -0x1

    .line 1110
    .local v0, "c":I
    invoke-direct {p0}, Lorg/mortbay/jetty/HttpParser$Input;->blockForContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1112
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1121
    const/4 v0, -0x1

    .line 1122
    .local v0, "l":I
    invoke-direct {p0}, Lorg/mortbay/jetty/HttpParser$Input;->blockForContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1123
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/mortbay/io/Buffer;->get([BII)I

    move-result v0

    .line 1124
    :cond_0
    return v0
.end method
