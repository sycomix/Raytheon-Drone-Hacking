.class public Lorg/mortbay/jetty/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# static fields
.field public static final CACHE:Lorg/mortbay/io/BufferCache;

.field public static final FORM_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final FORM_ENCODED_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final FORM_ENCODED_ORDINAL:I = 0x1

.field public static final MESSAGE_HTTP:Ljava/lang/String; = "message/http"

.field public static final MESSAGE_HTTP_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final MESSAGE_HTTP_ORDINAL:I = 0x2

.field public static final MULTIPART_BYTERANGES:Ljava/lang/String; = "multipart/byteranges"

.field public static final MULTIPART_BYTERANGES_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final MULTIPART_BYTERANGES_ORDINAL:I = 0x3

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final TEXT_HTML_8859_1:Ljava/lang/String; = "text/html; charset=iso-8859-1"

.field public static final TEXT_HTML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_8859_1_ORDINAL:I = 0x7

.field public static final TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_ORDINAL:I = 0x4

.field public static final TEXT_HTML_UTF_8:Ljava/lang/String; = "text/html; charset=utf-8"

.field public static final TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_UTF_8_ORDINAL:I = 0xa

.field public static final TEXT_JSON:Ljava/lang/String; = "text/json"

.field public static final TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_JSON_ORDINAL:I = 0xd

.field public static final TEXT_JSON_UTF_8:Ljava/lang/String; = "text/json;charset=UTF-8"

.field public static final TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_JSON_UTF_8_ORDINAL:I = 0xe

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final TEXT_PLAIN_8859_1:Ljava/lang/String; = "text/plain; charset=iso-8859-1"

.field public static final TEXT_PLAIN_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_8859_1_ORDINAL:I = 0x8

.field public static final TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_ORDINAL:I = 0x5

.field public static final TEXT_PLAIN_UTF_8:Ljava/lang/String; = "text/plain; charset=utf-8"

.field public static final TEXT_PLAIN_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_UTF_8_ORDINAL:I = 0xb

.field public static final TEXT_XML:Ljava/lang/String; = "text/xml"

.field public static final TEXT_XML_8859_1:Ljava/lang/String; = "text/xml; charset=iso-8859-1"

.field public static final TEXT_XML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_8859_1_ORDINAL:I = 0x9

.field public static final TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_ORDINAL:I = 0x6

.field public static final TEXT_XML_UTF_8:Ljava/lang/String; = "text/xml; charset=utf-8"

.field public static final TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_UTF_8_ORDINAL:I = 0xc

.field private static final __dftMimeMap:Ljava/util/Map;

.field private static final __encodings:Ljava/util/Map;

.field private static __index:I


# instance fields
.field private _mimeMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 74
    const/16 v7, 0xf

    sput v7, Lorg/mortbay/jetty/MimeTypes;->__index:I

    .line 76
    new-instance v7, Lorg/mortbay/io/BufferCache;

    invoke-direct {v7}, Lorg/mortbay/io/BufferCache;-><init>()V

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    .line 79
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v8, "application/x-www-form-urlencoded"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->FORM_ENCODED_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 80
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v8, "message/http"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->MESSAGE_HTTP_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 81
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v8, "multipart/byteranges"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->MULTIPART_BYTERANGES_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 83
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v8, "text/html"

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 84
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v8, "text/plain"

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 85
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v8, "text/xml"

    const/4 v9, 0x6

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 87
    new-instance v7, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "text/html; charset=iso-8859-1"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 88
    new-instance v7, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "text/plain; charset=iso-8859-1"

    const/16 v9, 0x8

    invoke-direct {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 89
    new-instance v7, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "text/xml; charset=iso-8859-1"

    const/16 v9, 0x9

    invoke-direct {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 90
    new-instance v7, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "text/html; charset=utf-8"

    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 91
    new-instance v7, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "text/plain; charset=utf-8"

    const/16 v9, 0xb

    invoke-direct {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 92
    new-instance v7, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "text/xml; charset=utf-8"

    const/16 v9, 0xc

    invoke-direct {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 94
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v8, "text/json"

    const/16 v9, 0xd

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 95
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v8, "text/json;charset=UTF-8"

    const/16 v9, 0xe

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 100
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    .line 101
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lorg/mortbay/jetty/MimeTypes;->__encodings:Ljava/util/Map;

    .line 106
    :try_start_0
    const-string v7, "org/mortbay/jetty/mime"

    invoke-static {v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v5

    .line 107
    .local v5, "mime":Ljava/util/ResourceBundle;
    invoke-virtual {v5}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    .line 108
    .local v3, "i":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 110
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    .local v2, "ext":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "m":Ljava/lang/String;
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    invoke-static {v2}, Lorg/mortbay/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Lorg/mortbay/jetty/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v2    # "ext":Ljava/lang/String;
    .end local v3    # "i":Ljava/util/Enumeration;
    .end local v4    # "m":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/util/MissingResourceException;
    invoke-virtual {v0}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 123
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_0
    :try_start_1
    const-string v7, "org/mortbay/jetty/encoding"

    invoke-static {v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 124
    .local v1, "encoding":Ljava/util/ResourceBundle;
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    .line 125
    .restart local v3    # "i":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lorg/mortbay/jetty/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v6

    .line 128
    .local v6, "type":Lorg/mortbay/io/Buffer;
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->__encodings:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 131
    .end local v1    # "encoding":Ljava/util/ResourceBundle;
    .end local v3    # "i":Ljava/util/Enumeration;
    .end local v6    # "type":Lorg/mortbay/io/Buffer;
    :catch_1
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    invoke-virtual {v0}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 138
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_1
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "ISO-8859-1"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 139
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "ISO_8859_1"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 140
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "iso-8859-1"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 141
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "ISO-8859-1"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 142
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "ISO_8859_1"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 143
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "iso-8859-1"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 144
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "ISO-8859-1"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 145
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "ISO_8859_1"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 146
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "iso-8859-1"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 148
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "UTF-8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 149
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "UTF8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 150
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "utf8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 151
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "utf-8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 152
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "UTF-8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 153
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "UTF8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 154
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "utf-8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 155
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "UTF-8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 156
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "utf8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 157
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "UTF8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 158
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "utf-8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 160
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "UTF-8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 161
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "utf8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 162
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "UTF8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 163
    sget-object v7, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v8, "utf-8"

    sget-object v9, Lorg/mortbay/jetty/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V

    .line 164
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method public static getCharsetFromContentType(Lorg/mortbay/io/Buffer;)Ljava/lang/String;
    .locals 11
    .param p0, "value"    # Lorg/mortbay/io/Buffer;

    .prologue
    const/16 v10, 0x3b

    const/16 v9, 0xa

    const/16 v8, 0x22

    const/16 v7, 0x20

    .line 269
    instance-of v6, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v6, :cond_0

    move-object v6, p0

    .line 271
    check-cast v6, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v6}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 287
    :cond_0
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    .line 288
    .local v2, "i":I
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v1

    .line 289
    .local v1, "end":I
    const/4 v5, 0x0

    .line 290
    .local v5, "state":I
    const/4 v4, 0x0

    .line 291
    .local v4, "start":I
    const/4 v3, 0x0

    .line 292
    .local v3, "quote":Z
    :goto_0
    if-ge v2, v1, :cond_f

    .line 294
    invoke-interface {p0, v2}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v0

    .line 296
    .local v0, "b":B
    if-eqz v3, :cond_2

    if-eq v5, v9, :cond_2

    .line 298
    if-ne v8, v0, :cond_1

    .line 299
    const/4 v3, 0x0

    .line 292
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "b":B
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "quote":Z
    .end local v4    # "start":I
    .end local v5    # "state":I
    :pswitch_0
    sget-object v6, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    .line 348
    :goto_2
    return-object v6

    .line 283
    :pswitch_1
    const-string v6, "UTF-8"

    goto :goto_2

    .line 303
    .restart local v0    # "b":B
    .restart local v1    # "end":I
    .restart local v2    # "i":I
    .restart local v3    # "quote":Z
    .restart local v4    # "start":I
    .restart local v5    # "state":I
    :cond_2
    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 306
    :pswitch_2
    if-ne v8, v0, :cond_3

    .line 308
    const/4 v3, 0x1

    .line 309
    goto :goto_1

    .line 311
    :cond_3
    if-ne v10, v0, :cond_1

    .line 312
    const/4 v5, 0x1

    goto :goto_1

    .line 315
    :pswitch_3
    const/16 v6, 0x63

    if-ne v6, v0, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :cond_4
    if-eq v7, v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 316
    :pswitch_4
    const/16 v6, 0x68

    if-ne v6, v0, :cond_5

    const/4 v5, 0x3

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 317
    :pswitch_5
    const/16 v6, 0x61

    if-ne v6, v0, :cond_6

    const/4 v5, 0x4

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 318
    :pswitch_6
    const/16 v6, 0x72

    if-ne v6, v0, :cond_7

    const/4 v5, 0x5

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 319
    :pswitch_7
    const/16 v6, 0x73

    if-ne v6, v0, :cond_8

    const/4 v5, 0x6

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    .line 320
    :pswitch_8
    const/16 v6, 0x65

    if-ne v6, v0, :cond_9

    const/4 v5, 0x7

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    .line 321
    :pswitch_9
    const/16 v6, 0x74

    if-ne v6, v0, :cond_a

    const/16 v5, 0x8

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_1

    .line 323
    :pswitch_a
    const/16 v6, 0x3d

    if-ne v6, v0, :cond_b

    const/16 v5, 0x9

    goto :goto_1

    :cond_b
    if-eq v7, v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 326
    :pswitch_b
    if-eq v7, v0, :cond_1

    .line 328
    if-ne v8, v0, :cond_c

    .line 330
    const/4 v3, 0x1

    .line 331
    add-int/lit8 v4, v2, 0x1

    .line 332
    const/16 v5, 0xa

    .line 333
    goto :goto_1

    .line 335
    :cond_c
    move v4, v2

    .line 336
    const/16 v5, 0xa

    .line 337
    goto :goto_1

    .line 340
    :pswitch_c
    if-nez v3, :cond_d

    if-eq v10, v0, :cond_e

    if-eq v7, v0, :cond_e

    :cond_d
    if-eqz v3, :cond_1

    if-ne v8, v0, :cond_1

    .line 342
    :cond_e
    sget-object v6, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    sub-int v7, v2, v4

    invoke-interface {p0, v4, v7}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 346
    .end local v0    # "b":B
    :cond_f
    if-ne v5, v9, :cond_10

    .line 347
    sget-object v6, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    sub-int v7, v2, v4

    invoke-interface {p0, v4, v7}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 348
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 303
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static declared-synchronized normalizeMimeType(Ljava/lang/String;)Lorg/mortbay/io/Buffer;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 260
    const-class v2, Lorg/mortbay/jetty/MimeTypes;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {v1, p0}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 261
    .local v0, "b":Lorg/mortbay/io/Buffer;
    if-nez v0, :cond_0

    .line 262
    sget-object v1, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    sget v3, Lorg/mortbay/jetty/MimeTypes;->__index:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lorg/mortbay/jetty/MimeTypes;->__index:I

    invoke-virtual {v1, p0, v3}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 263
    :cond_0
    monitor-exit v2

    return-object v0

    .line 260
    .end local v0    # "b":Lorg/mortbay/io/Buffer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/mortbay/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lorg/mortbay/jetty/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v2, 0x0

    .line 215
    .local v2, "type":Lorg/mortbay/io/Buffer;
    if-eqz p1, :cond_1

    .line 217
    const/4 v1, -0x1

    .line 218
    .local v1, "i":I
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 220
    const-string v3, "."

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 222
    if-ltz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_4

    .line 233
    .end local v1    # "i":I
    :cond_1
    if-nez v2, :cond_3

    .line 235
    iget-object v3, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 236
    iget-object v3, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    const-string v4, "*"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "type":Lorg/mortbay/io/Buffer;
    check-cast v2, Lorg/mortbay/io/Buffer;

    .line 237
    .restart local v2    # "type":Lorg/mortbay/io/Buffer;
    :cond_2
    if-nez v2, :cond_3

    .line 238
    sget-object v3, Lorg/mortbay/jetty/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    const-string v4, "*"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "type":Lorg/mortbay/io/Buffer;
    check-cast v2, Lorg/mortbay/io/Buffer;

    .line 241
    .restart local v2    # "type":Lorg/mortbay/io/Buffer;
    :cond_3
    return-object v2

    .line 225
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "ext":Ljava/lang/String;
    iget-object v3, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 227
    iget-object v3, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "type":Lorg/mortbay/io/Buffer;
    check-cast v2, Lorg/mortbay/io/Buffer;

    .line 228
    .restart local v2    # "type":Lorg/mortbay/io/Buffer;
    :cond_5
    if-nez v2, :cond_0

    .line 229
    sget-object v3, Lorg/mortbay/jetty/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "type":Lorg/mortbay/io/Buffer;
    check-cast v2, Lorg/mortbay/io/Buffer;

    .restart local v2    # "type":Lorg/mortbay/io/Buffer;
    goto :goto_0
.end method

.method public declared-synchronized getMimeMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMimeMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "mimeMap"    # Ljava/util/Map;

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 191
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    .line 203
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v2, "m":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    .local v1, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/jetty/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_1
    iput-object v2, p0, Lorg/mortbay/jetty/MimeTypes;->_mimeMap:Ljava/util/Map;

    goto :goto_0
.end method
