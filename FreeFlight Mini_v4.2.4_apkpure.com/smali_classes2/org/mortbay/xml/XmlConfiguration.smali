.class public Lorg/mortbay/xml/XmlConfiguration;
.super Ljava/lang/Object;
.source "XmlConfiguration.java"


# static fields
.field private static final ZERO:Ljava/lang/Integer;

.field private static __parser:Lorg/mortbay/xml/XmlParser;

.field private static __primitiveHolders:[Ljava/lang/Class;

.field private static __primitives:[Ljava/lang/Class;

.field static class$java$lang$Boolean:Ljava/lang/Class;

.field static class$java$lang$Byte:Ljava/lang/Class;

.field static class$java$lang$Character:Ljava/lang/Class;

.field static class$java$lang$Double:Ljava/lang/Class;

.field static class$java$lang$Float:Ljava/lang/Class;

.field static class$java$lang$Integer:Ljava/lang/Class;

.field static class$java$lang$Long:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$java$lang$Short:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$java$lang$Void:Ljava/lang/Class;

.field static class$java$net$InetAddress:Ljava/lang/Class;

.field static class$java$net$URL:Ljava/lang/Class;

.field static class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;


# instance fields
.field private _config:Lorg/mortbay/xml/XmlParser$Node;

.field private _idMap:Ljava/util/Map;

.field private _propertyMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->__primitives:[Ljava/lang/Class;

    .line 56
    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_0
    aput-object v0, v1, v3

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Character:Ljava/lang/Class;

    :goto_1
    aput-object v0, v1, v4

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_2
    aput-object v0, v1, v5

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Short:Ljava/lang/Class;

    :goto_3
    aput-object v0, v1, v6

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_4
    aput-object v0, v1, v7

    const/4 v2, 0x5

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Long:Ljava/lang/Class;

    :goto_5
    aput-object v0, v1, v2

    const/4 v2, 0x6

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Float:Ljava/lang/Class;

    :goto_6
    aput-object v0, v1, v2

    const/4 v2, 0x7

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Double:Ljava/lang/Class;

    :goto_7
    aput-object v0, v1, v2

    const/16 v2, 0x8

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Void:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.lang.Void"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Void:Ljava/lang/Class;

    :goto_8
    aput-object v0, v1, v2

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->__primitiveHolders:[Ljava/lang/Class;

    .line 58
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->ZERO:Ljava/lang/Integer;

    return-void

    .line 56
    :cond_0
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Character:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Byte:Ljava/lang/Class;

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Short:Ljava/lang/Class;

    goto :goto_3

    :cond_4
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Integer:Ljava/lang/Class;

    goto :goto_4

    :cond_5
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Long:Ljava/lang/Class;

    goto :goto_5

    :cond_6
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Float:Ljava/lang/Class;

    goto :goto_6

    :cond_7
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Double:Ljava/lang/Class;

    goto :goto_7

    :cond_8
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Void:Ljava/lang/Class;

    goto :goto_8
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "configuration"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 144
    invoke-static {}, Lorg/mortbay/xml/XmlConfiguration;->initParser()V

    .line 145
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 146
    .local v0, "source":Lorg/xml/sax/InputSource;
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    monitor-enter v2

    .line 148
    :try_start_0
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v1, v0}, Lorg/mortbay/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    .line 149
    monitor-exit v2

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "configuration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 124
    invoke-static {}, Lorg/mortbay/xml/XmlConfiguration;->initParser()V

    .line 125
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<?xml version=\"1.0\"  encoding=\"ISO-8859-1\"?>\n<!DOCTYPE Configure PUBLIC \"-//Mort Bay Consulting//DTD Configure 1.2//EN\" \"http://jetty.mortbay.org/configure_1_2.dtd\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 128
    .local v0, "source":Lorg/xml/sax/InputSource;
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    monitor-enter v2

    .line 130
    :try_start_0
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v1, v0}, Lorg/mortbay/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    .line 131
    monitor-exit v2

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "configuration"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 106
    invoke-static {}, Lorg/mortbay/xml/XmlConfiguration;->initParser()V

    .line 107
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    monitor-enter v1

    .line 109
    :try_start_0
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private call(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 20
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 497
    const-string v17, "id"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 498
    .local v8, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v15

    .line 499
    .local v15, "oClass":Ljava/lang/Class;
    if-eqz v15, :cond_1

    .line 500
    const/16 p1, 0x0

    .line 502
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v15, :cond_2

    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p2 .. p2}, Lorg/mortbay/xml/XmlParser$Node;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 501
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    goto :goto_0

    .line 504
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_2
    const/16 v16, 0x0

    .line 505
    .local v16, "size":I
    invoke-virtual/range {p2 .. p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v3

    .line 506
    .local v3, "argi":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    .line 508
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 509
    .local v14, "o":Ljava/lang/Object;
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 506
    .end local v14    # "o":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 510
    .restart local v14    # "o":Ljava/lang/Object;
    :cond_3
    check-cast v14, Lorg/mortbay/xml/XmlParser$Node;

    .end local v14    # "o":Ljava/lang/Object;
    invoke-virtual {v14}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Arg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 512
    move v3, v7

    .line 518
    :cond_4
    move/from16 v0, v16

    new-array v2, v0, [Ljava/lang/Object;

    .line 519
    .local v2, "arg":[Ljava/lang/Object;
    const/4 v7, 0x0

    const/4 v9, 0x0

    .local v9, "j":I
    move v10, v9

    .end local v9    # "j":I
    .local v10, "j":I
    :goto_3
    move/from16 v0, v16

    if-ge v10, v0, :cond_7

    .line 521
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 522
    .restart local v14    # "o":Ljava/lang/Object;
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move v9, v10

    .line 519
    .end local v10    # "j":I
    .end local v14    # "o":Ljava/lang/Object;
    .restart local v9    # "j":I
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_3

    .line 515
    .end local v2    # "arg":[Ljava/lang/Object;
    .end local v10    # "j":I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 523
    .restart local v2    # "arg":[Ljava/lang/Object;
    .restart local v10    # "j":I
    .restart local v14    # "o":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    check-cast v14, Lorg/mortbay/xml/XmlParser$Node;

    .end local v14    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v2, v10

    goto :goto_4

    .line 526
    .end local v9    # "j":I
    .restart local v10    # "j":I
    :cond_7
    const-string v17, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 527
    .local v11, "method":Ljava/lang/String;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "XML call "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 530
    :cond_8
    invoke-virtual {v15}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    .line 531
    .local v12, "methods":[Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_5
    if-eqz v12, :cond_e

    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_e

    .line 533
    aget-object v17, v12, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 531
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 534
    :cond_a
    aget-object v17, v12, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 535
    aget-object v17, v12, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v18

    if-nez p1, :cond_d

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 536
    if-nez p1, :cond_b

    aget-object v17, v12, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v0, v15, :cond_9

    .line 538
    :cond_b
    const/4 v13, 0x0

    .line 539
    .local v13, "n":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 542
    .local v5, "called":Z
    :try_start_0
    aget-object v17, v12, v4

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 543
    const/4 v5, 0x1

    .line 553
    .end local v13    # "n":Ljava/lang/Object;
    :goto_7
    if-eqz v5, :cond_9

    .line 555
    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1, v3}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 557
    return-object v13

    .line 535
    .end local v5    # "called":Z
    :cond_d
    const/16 v17, 0x0

    goto :goto_6

    .line 545
    .restart local v5    # "called":Z
    .restart local v13    # "n":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 547
    .local v6, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v6}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 549
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v6

    .line 551
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v6}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 561
    .end local v5    # "called":Z
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "n":Ljava/lang/Object;
    :cond_e
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "No Method: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, " on "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 56
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

.method private configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "cfg"    # Lorg/mortbay/xml/XmlParser$Node;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    const-string v5, "id"

    invoke-virtual {p2, v5}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 236
    iget-object v5, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v5, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v5

    if-ge p3, v5, :cond_a

    .line 240
    invoke-virtual {p2, p3}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 241
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 238
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 242
    check-cast v2, Lorg/mortbay/xml/XmlParser$Node;

    .line 246
    .local v2, "node":Lorg/mortbay/xml/XmlParser$Node;
    :try_start_0
    invoke-virtual {v2}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "tag":Ljava/lang/String;
    const-string v5, "Set"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->set(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 266
    .end local v4    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Config error at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    throw v0

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "Put"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->put(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_1

    .line 251
    :cond_3
    const-string v5, "Call"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 252
    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->call(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 253
    :cond_4
    const-string v5, "Get"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 254
    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->get(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 255
    :cond_5
    const-string v5, "New"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 256
    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->newObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 257
    :cond_6
    const-string v5, "Array"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 258
    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->newArray(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 259
    :cond_7
    const-string v5, "Ref"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 260
    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->refObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 261
    :cond_8
    const-string v5, "Property"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 262
    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->propertyObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 264
    :cond_9
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unknown tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    .end local v2    # "node":Lorg/mortbay/xml/XmlParser$Node;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private get(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 452
    invoke-direct {p0, p2}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v6

    .line 453
    .local v6, "oClass":Ljava/lang/Class;
    if-eqz v6, :cond_2

    .line 454
    const/4 p1, 0x0

    .line 458
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    const-string v7, "name"

    invoke-virtual {p2, v7}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "name":Ljava/lang/String;
    const-string v7, "id"

    invoke-virtual {p2, v7}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "id":Ljava/lang/String;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "XML get "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 465
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "get"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 467
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 468
    .restart local p1    # "obj":Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, v7}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v1, :cond_1

    iget-object v7, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v7, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_1
    return-object p1

    .line 456
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_0

    .line 470
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 474
    .local v5, "nsme":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {v6, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 475
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 476
    .restart local p1    # "obj":Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, v7}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 478
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local p1    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 480
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    throw v5
.end method

.method private static declared-synchronized initParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-class v3, Lorg/mortbay/xml/XmlConfiguration;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 96
    .local v0, "configURL":Ljava/net/URL;
    :goto_0
    monitor-exit v3

    return-void

    .line 71
    .end local v0    # "configURL":Ljava/net/URL;
    :cond_0
    :try_start_1
    new-instance v2, Lorg/mortbay/xml/XmlParser;

    invoke-direct {v2}, Lorg/mortbay/xml/XmlParser;-><init>()V

    sput-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.mortbay.xml.XmlConfiguration"

    invoke-static {v2}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    :goto_1
    const-string v4, "org/mortbay/xml/configure_6_0.dtd"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    .line 75
    .restart local v0    # "configURL":Ljava/net/URL;
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "configure.dtd"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 76
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "configure_1_3.dtd"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 77
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "http://jetty.mortbay.org/configure.dtd"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 78
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "-//Mort Bay Consulting//DTD Configure//EN"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 79
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "http://jetty.mortbay.org/configure_1_3.dtd"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 80
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "-//Mort Bay Consulting//DTD Configure 1.3//EN"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 81
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "configure_1_2.dtd"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 82
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "http://jetty.mortbay.org/configure_1_2.dtd"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 83
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "-//Mort Bay Consulting//DTD Configure 1.2//EN"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 84
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "configure_1_1.dtd"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 85
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "http://jetty.mortbay.org/configure_1_1.dtd"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 86
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "-//Mort Bay Consulting//DTD Configure 1.1//EN"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 87
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "configure_1_0.dtd"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 88
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "http://jetty.mortbay.org/configure_1_0.dtd"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 89
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string v4, "-//Mort Bay Consulting//DTD Configure 1.0//EN"

    invoke-virtual {v2, v4, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 94
    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 69
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 74
    .end local v0    # "configURL":Ljava/net/URL;
    :cond_1
    :try_start_4
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 909
    instance-of v4, p2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 929
    .end local p2    # "item":Ljava/lang/Object;
    :goto_0
    return-object p2

    .restart local p2    # "item":Ljava/lang/Object;
    :cond_0
    move-object v2, p2

    .line 911
    check-cast v2, Lorg/mortbay/xml/XmlParser$Node;

    .line 912
    .local v2, "node":Lorg/mortbay/xml/XmlParser$Node;
    invoke-virtual {v2}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 913
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "Call"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->call(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 914
    :cond_1
    const-string v4, "Get"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->get(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 915
    :cond_2
    const-string v4, "New"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->newObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 916
    :cond_3
    const-string v4, "Ref"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->refObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 917
    :cond_4
    const-string v4, "Array"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->newArray(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 918
    :cond_5
    const-string v4, "Map"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->newMap(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 919
    :cond_6
    const-string v4, "Property"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, p1, v2}, Lorg/mortbay/xml/XmlConfiguration;->propertyObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 921
    :cond_7
    const-string v4, "SystemProperty"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 923
    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, "name":Ljava/lang/String;
    const-string v4, "default"

    invoke-virtual {v2, v4}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 928
    .end local v0    # "defaultValue":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_8
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unknown value tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 929
    const/4 p2, 0x0

    goto/16 :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 958
    :try_start_0
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 959
    .local v6, "properties":Ljava/util/Properties;
    const/4 v3, 0x0

    .line 960
    .local v3, "last":Lorg/mortbay/xml/XmlConfiguration;
    array-length v7, p0

    new-array v5, v7, [Ljava/lang/Object;

    .line 961
    .local v5, "obj":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p0

    if-ge v2, v7, :cond_3

    .line 963
    aget-object v7, p0, v2

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".properties"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 965
    aget-object v7, p0, v2

    invoke-static {v7}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v7

    invoke-virtual {v7}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 961
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    :cond_0
    new-instance v0, Lorg/mortbay/xml/XmlConfiguration;

    aget-object v7, p0, v2

    invoke-static {v7}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v7

    invoke-virtual {v7}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/mortbay/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    .line 970
    .local v0, "configuration":Lorg/mortbay/xml/XmlConfiguration;
    if-eqz v3, :cond_1

    .line 971
    invoke-virtual {v0}, Lorg/mortbay/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3}, Lorg/mortbay/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 972
    :cond_1
    invoke-virtual {v6}, Ljava/util/Properties;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 973
    invoke-virtual {v0, v6}, Lorg/mortbay/xml/XmlConfiguration;->setProperties(Ljava/util/Map;)V

    .line 974
    :cond_2
    invoke-virtual {v0}, Lorg/mortbay/xml/XmlConfiguration;->configure()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v2

    .line 975
    move-object v3, v0

    goto :goto_1

    .line 979
    .end local v0    # "configuration":Lorg/mortbay/xml/XmlConfiguration;
    :cond_3
    const/4 v2, 0x0

    :goto_2
    array-length v7, p0

    if-ge v2, v7, :cond_5

    .line 981
    aget-object v7, v5, v2

    instance-of v7, v7, Lorg/mortbay/component/LifeCycle;

    if-eqz v7, :cond_4

    .line 983
    aget-object v4, v5, v2

    check-cast v4, Lorg/mortbay/component/LifeCycle;

    .line 984
    .local v4, "lc":Lorg/mortbay/component/LifeCycle;
    invoke-interface {v4}, Lorg/mortbay/component/LifeCycle;->isRunning()Z

    move-result v7

    if-nez v7, :cond_4

    .line 985
    invoke-interface {v4}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    .end local v4    # "lc":Lorg/mortbay/component/LifeCycle;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 989
    .end local v2    # "i":I
    .end local v3    # "last":Lorg/mortbay/xml/XmlConfiguration;
    .end local v5    # "obj":[Ljava/lang/Object;
    .end local v6    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v1

    .line 991
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "EXCEPTION "

    invoke-static {v7, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 994
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method private newArray(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 660
    sget-object v9, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v9, :cond_2

    const-string v9, "java.lang.Object"

    invoke-static {v9}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    .line 661
    .local v0, "aClass":Ljava/lang/Class;
    :goto_0
    const-string v9, "type"

    invoke-virtual {p2, v9}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 662
    .local v7, "type":Ljava/lang/String;
    const-string v9, "id"

    invoke-virtual {p2, v9}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "id":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 665
    invoke-static {v7}, Lorg/mortbay/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 666
    if-nez v0, :cond_0

    .line 668
    const-string v9, "String"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 669
    sget-object v9, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    if-nez v9, :cond_3

    const-string v9, "java.lang.String"

    invoke-static {v9}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .end local v0    # "aClass":Ljava/lang/Class;
    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    .line 679
    .restart local v0    # "aClass":Ljava/lang/Class;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .line 681
    .local v1, "al":Ljava/lang/Object;
    const-string v9, "Item"

    invoke-virtual {p2, v9}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v5

    .line 682
    .end local v1    # "al":Ljava/lang/Object;
    .local v5, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 684
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/xml/XmlParser$Node;

    .line 685
    .local v4, "item":Lorg/mortbay/xml/XmlParser$Node;
    const-string v9, "id"

    invoke-virtual {v4, v9}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 686
    .local v6, "nid":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v8

    .line 687
    .local v8, "v":Ljava/lang/Object;
    if-nez v8, :cond_a

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v9, Lorg/mortbay/xml/XmlConfiguration;->ZERO:Ljava/lang/Integer;

    :goto_3
    invoke-static {v1, v9}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 688
    .restart local v1    # "al":Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 689
    iget-object v9, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 660
    .end local v0    # "aClass":Ljava/lang/Class;
    .end local v1    # "al":Ljava/lang/Object;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "item":Lorg/mortbay/xml/XmlParser$Node;
    .end local v5    # "iter":Ljava/util/Iterator;
    .end local v6    # "nid":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/Object;
    :cond_2
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_0

    .line 669
    .restart local v0    # "aClass":Ljava/lang/Class;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_3
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1

    .line 670
    :cond_4
    const-string v9, "URL"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 671
    sget-object v9, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$URL:Ljava/lang/Class;

    if-nez v9, :cond_5

    const-string v9, "java.net.URL"

    invoke-static {v9}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .end local v0    # "aClass":Ljava/lang/Class;
    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$URL:Ljava/lang/Class;

    .restart local v0    # "aClass":Ljava/lang/Class;
    :goto_4
    goto :goto_1

    :cond_5
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$URL:Ljava/lang/Class;

    goto :goto_4

    .line 672
    :cond_6
    const-string v9, "InetAddress"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 673
    sget-object v9, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$InetAddress:Ljava/lang/Class;

    if-nez v9, :cond_7

    const-string v9, "java.net.InetAddress"

    invoke-static {v9}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .end local v0    # "aClass":Ljava/lang/Class;
    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$InetAddress:Ljava/lang/Class;

    .restart local v0    # "aClass":Ljava/lang/Class;
    :goto_5
    goto :goto_1

    :cond_7
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$InetAddress:Ljava/lang/Class;

    goto :goto_5

    .line 675
    :cond_8
    sget-object v9, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    if-nez v9, :cond_9

    const-string v9, "org.mortbay.xml.XmlConfiguration"

    invoke-static {v9}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    :goto_6
    const/4 v10, 0x1

    invoke-static {v9, v7, v10}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_9
    sget-object v9, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    goto :goto_6

    .restart local v4    # "item":Lorg/mortbay/xml/XmlParser$Node;
    .restart local v5    # "iter":Ljava/util/Iterator;
    .restart local v6    # "nid":Ljava/lang/String;
    .restart local v8    # "v":Ljava/lang/Object;
    :cond_a
    move-object v9, v8

    .line 687
    goto :goto_3

    .line 692
    .end local v4    # "item":Lorg/mortbay/xml/XmlParser$Node;
    .end local v6    # "nid":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/Object;
    :cond_b
    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 693
    .local v2, "array":Ljava/lang/Object;
    if-eqz v3, :cond_c

    .line 694
    iget-object v9, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_c
    return-object v2
.end method

.method private newMap(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 17
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 705
    const-string v15, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, "id":Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 708
    .local v10, "map":Ljava/util/Map;
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v15, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v15

    if-ge v3, v15, :cond_b

    .line 712
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 713
    .local v11, "o":Ljava/lang/Object;
    instance-of v15, v11, Ljava/lang/String;

    if-eqz v15, :cond_2

    .line 710
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v11

    .line 714
    check-cast v2, Lorg/mortbay/xml/XmlParser$Node;

    .line 715
    .local v2, "entry":Lorg/mortbay/xml/XmlParser$Node;
    invoke-virtual {v2}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Entry"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Not an Entry"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 718
    :cond_3
    const/4 v8, 0x0

    .line 719
    .local v8, "key":Lorg/mortbay/xml/XmlParser$Node;
    const/4 v13, 0x0

    .line 721
    .local v13, "value":Lorg/mortbay/xml/XmlParser$Node;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-virtual {v2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v15

    if-ge v6, v15, :cond_7

    .line 723
    invoke-virtual {v2, v6}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 724
    instance-of v15, v11, Ljava/lang/String;

    if-eqz v15, :cond_4

    .line 721
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move-object v5, v11

    .line 725
    check-cast v5, Lorg/mortbay/xml/XmlParser$Node;

    .line 726
    .local v5, "item":Lorg/mortbay/xml/XmlParser$Node;
    invoke-virtual {v5}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Item"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Not an Item"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 727
    :cond_5
    if-nez v8, :cond_6

    .line 728
    move-object v8, v5

    goto :goto_3

    .line 730
    :cond_6
    move-object v13, v5

    goto :goto_3

    .line 733
    .end local v5    # "item":Lorg/mortbay/xml/XmlParser$Node;
    :cond_7
    if-eqz v8, :cond_8

    if-nez v13, :cond_9

    .line 734
    :cond_8
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Missing Item in Entry"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 735
    :cond_9
    const-string v15, "id"

    invoke-virtual {v8, v15}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 736
    .local v9, "kid":Ljava/lang/String;
    const-string v15, "id"

    invoke-virtual {v13, v15}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 738
    .local v14, "vid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v7

    .line 739
    .local v7, "k":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v12

    .line 740
    .local v12, "v":Ljava/lang/Object;
    invoke-interface {v10, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v15, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    :cond_a
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v15, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 746
    .end local v2    # "entry":Lorg/mortbay/xml/XmlParser$Node;
    .end local v6    # "j":I
    .end local v7    # "k":Ljava/lang/Object;
    .end local v8    # "key":Lorg/mortbay/xml/XmlParser$Node;
    .end local v9    # "kid":Ljava/lang/String;
    .end local v11    # "o":Ljava/lang/Object;
    .end local v12    # "v":Ljava/lang/Object;
    .end local v13    # "value":Lorg/mortbay/xml/XmlParser$Node;
    .end local v14    # "vid":Ljava/lang/String;
    :cond_b
    return-object v10
.end method

.method private newObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 19
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 572
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v14

    .line 573
    .local v14, "oClass":Ljava/lang/Class;
    const-string v16, "id"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 574
    .local v9, "id":Ljava/lang/String;
    const/4 v15, 0x0

    .line 575
    .local v15, "size":I
    invoke-virtual/range {p2 .. p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v3

    .line 576
    .local v3, "argi":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    .line 578
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 579
    .local v13, "o":Ljava/lang/Object;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 576
    .end local v13    # "o":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 580
    .restart local v13    # "o":Ljava/lang/Object;
    :cond_0
    check-cast v13, Lorg/mortbay/xml/XmlParser$Node;

    .end local v13    # "o":Ljava/lang/Object;
    invoke-virtual {v13}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Arg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 582
    move v3, v8

    .line 588
    :cond_1
    new-array v2, v15, [Ljava/lang/Object;

    .line 589
    .local v2, "arg":[Ljava/lang/Object;
    const/4 v8, 0x0

    const/4 v10, 0x0

    .local v10, "j":I
    move v11, v10

    .end local v10    # "j":I
    .local v11, "j":I
    :goto_2
    if-ge v11, v15, :cond_4

    .line 591
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 592
    .restart local v13    # "o":Ljava/lang/Object;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move v10, v11

    .line 589
    .end local v11    # "j":I
    .end local v13    # "o":Ljava/lang/Object;
    .restart local v10    # "j":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto :goto_2

    .line 585
    .end local v2    # "arg":[Ljava/lang/Object;
    .end local v11    # "j":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 593
    .restart local v2    # "arg":[Ljava/lang/Object;
    .restart local v11    # "j":I
    .restart local v13    # "o":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    check-cast v13, Lorg/mortbay/xml/XmlParser$Node;

    .end local v13    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v2, v11

    goto :goto_3

    .line 596
    .end local v10    # "j":I
    .restart local v11    # "j":I
    :cond_4
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_5

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "XML new "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 599
    :cond_5
    invoke-virtual {v14}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 600
    .local v6, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_4
    if-eqz v6, :cond_9

    array-length v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_9

    .line 602
    aget-object v16, v6, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v15, :cond_7

    .line 600
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 604
    :cond_7
    const/4 v12, 0x0

    .line 605
    .local v12, "n":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 608
    .local v5, "called":Z
    :try_start_0
    aget-object v16, v6, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    .line 609
    const/4 v5, 0x1

    .line 623
    .end local v12    # "n":Ljava/lang/Object;
    :goto_5
    if-eqz v5, :cond_6

    .line 625
    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v12, v1, v3}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 627
    return-object v12

    .line 611
    .restart local v12    # "n":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 613
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 615
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v7

    .line 617
    .local v7, "e":Ljava/lang/InstantiationException;
    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 619
    .end local v7    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v7

    .line 621
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 631
    .end local v5    # "called":Z
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "n":Ljava/lang/Object;
    :cond_9
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "No Constructor: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, " on "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method private nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;
    .locals 3
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 221
    const-string v1, "class"

    invoke-virtual {p1, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 224
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.mortbay.xml.XmlConfiguration"

    invoke-static {v1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    :goto_1
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    goto :goto_1
.end method

.method private propertyObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 757
    const-string v4, "id"

    invoke-virtual {p2, v4}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "id":Ljava/lang/String;
    const-string v4, "name"

    invoke-virtual {p2, v4}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "name":Ljava/lang/String;
    const-string v4, "default"

    invoke-virtual {p2, v4}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "defval":Ljava/lang/String;
    const/4 v3, 0x0

    .line 761
    .local v3, "prop":Ljava/lang/Object;
    iget-object v4, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 763
    iget-object v4, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 768
    .end local v3    # "prop":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 769
    iget-object v4, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_1
    if-eqz v3, :cond_2

    .line 771
    const/4 v4, 0x0

    invoke-direct {p0, v3, p2, v4}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 772
    :cond_2
    return-object v3

    .line 765
    .restart local v3    # "prop":Ljava/lang/Object;
    :cond_3
    if-eqz v0, :cond_0

    .line 766
    move-object v3, v0

    .local v3, "prop":Ljava/lang/String;
    goto :goto_0
.end method

.method private put(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 435
    instance-of v3, p1, Ljava/util/Map;

    if-nez v3, :cond_0

    .line 436
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Object for put is not a Map: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, p1

    .line 437
    check-cast v0, Ljava/util/Map;

    .line 439
    .local v0, "map":Ljava/util/Map;
    const-string v3, "name"

    invoke-virtual {p2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v2

    .line 441
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "XML "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".put("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 443
    :cond_1
    return-void
.end method

.method private refObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 643
    const-string v1, "id"

    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 645
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No object for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 646
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 647
    return-object p1
.end method

.method private set(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 20
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    const-string v17, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "attr":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "set"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "name":Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v16

    .line 287
    .local v16, "value":Ljava/lang/Object;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v2, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v16, v2, v17

    .line 289
    .local v2, "arg":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v8

    .line 290
    .local v8, "oClass":Ljava/lang/Class;
    if-eqz v8, :cond_2

    .line 291
    const/16 p1, 0x0

    .line 295
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/Class;

    const/16 v18, 0x0

    sget-object v17, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v17, :cond_3

    const-string v17, "java.lang.Object"

    invoke-static/range {v17 .. v17}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    sput-object v17, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    :goto_1
    aput-object v17, v15, v18

    .line 296
    .local v15, "vClass":[Ljava/lang/Class;
    if-eqz v16, :cond_0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    aput-object v18, v15, v17

    .line 298
    :cond_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 299
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "XML "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 304
    :cond_1
    :try_start_0
    invoke-virtual {v8, v7, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 305
    .local v11, "set":Ljava/lang/reflect/Method;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    .line 407
    .end local v11    # "set":Ljava/lang/reflect/Method;
    :goto_3
    return-void

    .line 293
    .end local v15    # "vClass":[Ljava/lang/Class;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_0

    .line 295
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_3
    sget-object v17, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_1

    .line 299
    .restart local v15    # "vClass":[Ljava/lang/Class;
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 308
    :catch_0
    move-exception v5

    .line 310
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 324
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    const/16 v17, 0x0

    :try_start_1
    aget-object v17, v15, v17

    const-string v18, "TYPE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 325
    .local v14, "type":Ljava/lang/reflect/Field;
    const/16 v18, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Class;

    aput-object v17, v15, v18

    .line 326
    invoke-virtual {v8, v7, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 327
    .restart local v11    # "set":Ljava/lang/reflect/Method;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_3

    .line 330
    .end local v11    # "set":Ljava/lang/reflect/Method;
    .end local v14    # "type":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v5

    .line 332
    .local v5, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 350
    .end local v5    # "e":Ljava/lang/NoSuchFieldException;
    :goto_5
    :try_start_2
    invoke-virtual {v8, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 351
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 353
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 357
    .end local v6    # "field":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v5

    .line 359
    .restart local v5    # "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 363
    .end local v5    # "e":Ljava/lang/NoSuchFieldException;
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    .line 364
    .local v12, "sets":[Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    .line 365
    .restart local v11    # "set":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .local v9, "s":I
    :goto_6
    if-eqz v12, :cond_7

    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 367
    aget-object v17, v12, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    aget-object v17, v12, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 372
    :try_start_3
    aget-object v11, v12, v9

    .line 373
    aget-object v17, v12, v9

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_9

    goto/16 :goto_3

    .line 376
    :catch_3
    move-exception v5

    .line 378
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 365
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 312
    .end local v9    # "s":I
    .end local v11    # "set":Ljava/lang/reflect/Method;
    .end local v12    # "sets":[Ljava/lang/reflect/Method;
    :catch_4
    move-exception v5

    .line 314
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 316
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v5

    .line 318
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 334
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_6
    move-exception v5

    .line 336
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 338
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v5

    .line 340
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 342
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_8
    move-exception v5

    .line 344
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 380
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v9    # "s":I
    .restart local v11    # "set":Ljava/lang/reflect/Method;
    .restart local v12    # "sets":[Ljava/lang/reflect/Method;
    :catch_9
    move-exception v5

    .line 382
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 388
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :cond_7
    if-eqz v11, :cond_9

    .line 392
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v10, v17, v18

    .line 393
    .local v10, "sClass":Ljava/lang/Class;
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 395
    const/4 v13, 0x0

    .local v13, "t":I
    :goto_8
    sget-object v17, Lorg/mortbay/xml/XmlConfiguration;->__primitives:[Ljava/lang/Class;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v13, v0, :cond_8

    .line 397
    sget-object v17, Lorg/mortbay/xml/XmlConfiguration;->__primitives:[Ljava/lang/Class;

    aget-object v17, v17, v13

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 399
    sget-object v17, Lorg/mortbay/xml/XmlConfiguration;->__primitiveHolders:[Ljava/lang/Class;

    aget-object v10, v17, v13

    .line 404
    .end local v13    # "t":I
    :cond_8
    invoke-virtual {v10, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 405
    .local v4, "cons":Ljava/lang/reflect/Constructor;
    const/16 v17, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v2, v17

    .line 406
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_c

    goto/16 :goto_3

    .line 409
    .end local v4    # "cons":Ljava/lang/reflect/Constructor;
    .end local v10    # "sClass":Ljava/lang/Class;
    :catch_a
    move-exception v5

    .line 411
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 424
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :cond_9
    :goto_9
    new-instance v17, Ljava/lang/NoSuchMethodException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 395
    .restart local v10    # "sClass":Ljava/lang/Class;
    .restart local v13    # "t":I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 413
    .end local v10    # "sClass":Ljava/lang/Class;
    .end local v13    # "t":I
    :catch_b
    move-exception v5

    .line 415
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 417
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_c
    move-exception v5

    .line 419
    .local v5, "e":Ljava/lang/InstantiationException;
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 783
    const/4 v9, 0x0

    .line 786
    .local v9, "value":Ljava/lang/Object;
    const-string v11, "type"

    invoke-virtual {p2, v11}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 789
    .local v8, "type":Ljava/lang/String;
    const-string v11, "ref"

    invoke-virtual {p2, v11}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 790
    .local v7, "ref":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 792
    iget-object v11, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 855
    .end local v9    # "value":Ljava/lang/Object;
    :goto_0
    if-nez v9, :cond_d

    .line 857
    const-string v11, "String"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v9, ""

    .line 891
    :cond_0
    :goto_1
    return-object v9

    .line 797
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 799
    const-string v11, "String"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v9, ""

    goto :goto_1

    :cond_2
    move-object v9, v10

    .line 800
    goto :goto_1

    .line 804
    :cond_3
    const/4 v2, 0x0

    .line 805
    .local v2, "first":I
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .line 808
    .local v5, "last":I
    if-eqz v8, :cond_4

    const-string v11, "String"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 811
    :cond_4
    const/4 v4, 0x0

    .line 812
    :goto_2
    if-gt v2, v5, :cond_5

    .line 814
    invoke-virtual {p2, v2}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 815
    .local v4, "item":Ljava/lang/Object;
    instance-of v11, v4, Ljava/lang/String;

    if-nez v11, :cond_7

    .line 822
    .end local v4    # "item":Ljava/lang/Object;
    :cond_5
    :goto_3
    if-ge v2, v5, :cond_6

    .line 824
    invoke-virtual {p2, v5}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 825
    .restart local v4    # "item":Ljava/lang/Object;
    instance-of v11, v4, Ljava/lang/String;

    if-nez v11, :cond_8

    .line 832
    .end local v4    # "item":Ljava/lang/Object;
    :cond_6
    if-le v2, v5, :cond_9

    move-object v9, v10

    goto :goto_1

    .line 816
    .restart local v4    # "item":Ljava/lang/Object;
    :cond_7
    check-cast v4, Ljava/lang/String;

    .end local v4    # "item":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, "item":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .end local v4    # "item":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_5

    .line 818
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 826
    .local v4, "item":Ljava/lang/Object;
    :cond_8
    check-cast v4, Ljava/lang/String;

    .end local v4    # "item":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 827
    .local v4, "item":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .end local v4    # "item":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_6

    .line 828
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 835
    :cond_9
    if-ne v2, v5, :cond_a

    .line 837
    invoke-virtual {p2, v2}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lorg/mortbay/xml/XmlConfiguration;->itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 841
    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 842
    .local v0, "buf":Ljava/lang/StringBuffer;
    monitor-enter v0

    .line 844
    move v3, v2

    .local v3, "i":I
    :goto_4
    if-gt v3, v5, :cond_b

    .line 846
    :try_start_0
    invoke-virtual {p2, v3}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 847
    .local v4, "item":Ljava/lang/Object;
    invoke-direct {p0, p1, v4}, Lorg/mortbay/xml/XmlConfiguration;->itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 844
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 849
    .end local v4    # "item":Ljava/lang/Object;
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 850
    .local v9, "value":Ljava/lang/String;
    monitor-exit v0

    goto/16 :goto_0

    .end local v9    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "first":I
    .end local v3    # "i":I
    .end local v5    # "last":I
    :cond_c
    move-object v9, v10

    .line 858
    goto/16 :goto_1

    .line 862
    :cond_d
    if-nez v8, :cond_e

    .line 864
    if-eqz v9, :cond_0

    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_0

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 868
    :cond_e
    const-string v10, "String"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "java.lang.String"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_f
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 870
    :cond_10
    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 871
    .local v6, "pClass":Ljava/lang/Class;
    if-eqz v6, :cond_11

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/mortbay/util/TypeUtil;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_1

    .line 873
    :cond_11
    const-string v10, "URL"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "java.net.URL"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 875
    :cond_12
    instance-of v10, v9, Ljava/net/URL;

    if-nez v10, :cond_0

    .line 878
    :try_start_1
    new-instance v10, Ljava/net/URL;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v10

    goto/16 :goto_1

    .line 880
    :catch_0
    move-exception v1

    .line 882
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v10, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v10, v1}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 886
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_13
    const-string v10, "InetAddress"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    const-string v10, "java.net.InetAddress"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 888
    :cond_14
    instance-of v10, v9, Ljava/net/InetAddress;

    if-nez v10, :cond_0

    .line 891
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    goto/16 :goto_1

    .line 893
    :catch_1
    move-exception v1

    .line 895
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v10, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v10, v1}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 899
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_15
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Unknown type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public configure()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v3, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {p0, v3}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v1

    .line 205
    .local v1, "oClass":Ljava/lang/Class;
    iget-object v3, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 208
    .local v2, "obj":Ljava/lang/Object;
    :goto_0
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 211
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 214
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 215
    return-object v2
.end method

.method public configure(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {p0, v1}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v0

    .line 188
    .local v0, "oClass":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Object is not of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 191
    return-void
.end method

.method public getIdMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    return-object v0
.end method

.method public setIdMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    .line 162
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 168
    return-void
.end method
