.class public Lorg/mortbay/jetty/servlet/PathMap;
.super Ljava/util/HashMap;
.source "PathMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/PathMap$Entry;
    }
.end annotation


# static fields
.field private static __pathSpecSeparators:Ljava/lang/String;


# instance fields
.field _default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

.field _defaultSingletonList:Ljava/util/List;

.field _entrySet:Ljava/util/Set;

.field _exactMap:Lorg/mortbay/util/StringMap;

.field _nodefault:Z

.field _prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

.field _prefixMap:Lorg/mortbay/util/StringMap;

.field _suffixMap:Lorg/mortbay/util/StringMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "org.mortbay.http.PathMap.separators"

    const-string v1, ":,"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 80
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    .line 81
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    .line 82
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    .line 84
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 85
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 86
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    .line 96
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_entrySet:Ljava/util/Set;

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 80
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    .line 81
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    .line 82
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    .line 84
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 85
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 86
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    .line 115
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_entrySet:Ljava/util/Set;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 80
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    .line 81
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    .line 82
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    .line 84
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 85
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 86
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    .line 123
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->putAll(Ljava/util/Map;)V

    .line 124
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_entrySet:Ljava/util/Set;

    .line 125
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "nodefault"    # Z

    .prologue
    const/4 v1, 0x0

    .line 104
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 80
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    .line 81
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    .line 82
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    .line 84
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 85
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 86
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    .line 105
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_entrySet:Ljava/util/Set;

    .line 106
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    .line 107
    return-void
.end method

.method private static isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 416
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x2

    .line 417
    .local v0, "cpl":I
    const-string v2, "/*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1, p0, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v0, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 420
    :cond_0
    const/4 v1, 0x1

    .line 422
    :cond_1
    return v1
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/mortbay/jetty/servlet/PathMap;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "noDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 397
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 398
    .local v0, "c":C
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_4

    .line 400
    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    :cond_1
    :goto_0
    return v1

    .line 403
    :cond_2
    invoke-static {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    move v1, v2

    .line 409
    goto :goto_0

    .line 406
    :cond_4
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_3

    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, p0, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 460
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 462
    .local v0, "c":C
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_0

    .line 464
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-object v2

    .line 467
    :cond_1
    invoke-static {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 470
    .local v1, "wildcard":Z
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_0

    .line 473
    :cond_2
    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-eq v3, v4, :cond_0

    .line 477
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 432
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 434
    .local v0, "c":C
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 436
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 451
    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 439
    .restart local p1    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    invoke-static {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 445
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, p0, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static relativePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "pathSpec"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-static {p1, p2}, Lorg/mortbay/jetty/servlet/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "info":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 497
    move-object v0, p2

    .line 499
    :cond_0
    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 501
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 502
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 503
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 511
    :goto_0
    return-object p2

    .line 505
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 507
    :cond_3
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 508
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 510
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static setPathSpecSeparators(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 76
    sput-object p0, Lorg/mortbay/jetty/servlet/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    .line 373
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    .line 374
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    .line 375
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 376
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 377
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 378
    return-void
.end method

.method public containsMatch(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    .line 337
    .local v0, "match":Lorg/mortbay/jetty/servlet/PathMap$Entry;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "entries":Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 273
    invoke-static {v0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 314
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 275
    .restart local v0    # "entries":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 278
    .local v3, "l":I
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v4, p1, v6, v3}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    .line 279
    .local v1, "entry":Ljava/util/Map$Entry;
    if-eqz v1, :cond_2

    .line 280
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v3, -0x1

    .line 284
    .local v2, "i":I
    :cond_3
    :goto_1
    const/16 v4, 0x2f

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-ltz v2, :cond_4

    .line 286
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v4, p1, v6, v2}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    .line 287
    if-eqz v1, :cond_3

    .line 288
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "entries":Ljava/lang/Object;
    goto :goto_1

    .line 292
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    if-eqz v4, :cond_5

    .line 293
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    invoke-static {v0, v4}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 296
    :cond_5
    const/4 v2, 0x0

    .line 297
    :cond_6
    :goto_2
    const/16 v4, 0x2e

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_7

    .line 299
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, p1, v5, v6}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_6

    .line 301
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "entries":Ljava/lang/Object;
    goto :goto_2

    .line 305
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_7
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    if-eqz v4, :cond_0

    .line 308
    if-nez v0, :cond_8

    .line 309
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    goto :goto_0

    .line 311
    :cond_8
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    invoke-static {v0, v4}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "entries":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 225
    if-nez p1, :cond_0

    .line 226
    const/4 v3, 0x0

    .line 258
    :goto_0
    return-object v3

    .line 228
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 231
    .local v2, "l":I
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v3, p1, v5, v2}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 232
    .local v0, "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_1

    .line 233
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/servlet/PathMap$Entry;

    goto :goto_0

    .line 236
    :cond_1
    move v1, v2

    .line 237
    .local v1, "i":I
    :cond_2
    const/16 v3, 0x2f

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_3

    .line 239
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v3, p1, v5, v1}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_2

    .line 241
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/servlet/PathMap$Entry;

    goto :goto_0

    .line 245
    :cond_3
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    if-eqz v3, :cond_4

    .line 246
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    goto :goto_0

    .line 249
    :cond_4
    const/4 v1, 0x0

    .line 250
    :cond_5
    const/16 v3, 0x2e

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v1, :cond_6

    .line 252
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, p1, v4, v5}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_5

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/servlet/PathMap$Entry;

    goto :goto_0

    .line 258
    :cond_6
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    goto :goto_0
.end method

.method public getMatches(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    .line 210
    .local v0, "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "pathSpec"    # Ljava/lang/Object;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/servlet/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v4, "tok":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 154
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 156
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "spec":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "*."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 159
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "PathSpec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ". must start with \'/\' or \'*.\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v3    # "spec":Ljava/lang/String;
    .end local v4    # "tok":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 161
    .restart local v3    # "spec":Ljava/lang/String;
    .restart local v4    # "tok":Ljava/util/StringTokenizer;
    :cond_1
    :try_start_1
    invoke-super {p0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 164
    .local v2, "old":Ljava/lang/Object;
    new-instance v0, Lorg/mortbay/jetty/servlet/PathMap$Entry;

    invoke-direct {v0, v3, p2}, Lorg/mortbay/jetty/servlet/PathMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .local v0, "entry":Lorg/mortbay/jetty/servlet/PathMap$Entry;
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    const-string v5, "/*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    goto :goto_0

    .line 170
    :cond_2
    const-string v5, "/*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 172
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "mapped":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->setMapped(Ljava/lang/String;)V

    .line 174
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v5, v1, v0}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v5, v1, v0}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 178
    .end local v1    # "mapped":Ljava/lang/String;
    :cond_3
    const-string v5, "*."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 179
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 180
    :cond_4
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 182
    iget-boolean v5, p0, Lorg/mortbay/jetty/servlet/PathMap;->_nodefault:Z

    if-eqz v5, :cond_5

    .line 183
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v5, v3, v0}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 186
    :cond_5
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 187
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    invoke-static {v5}, Lorg/mortbay/util/SingletonList;->newSingletonList(Ljava/lang/Object;)Lorg/mortbay/util/SingletonList;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    goto/16 :goto_0

    .line 193
    :cond_6
    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->setMapped(Ljava/lang/String;)V

    .line 194
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v5, v3, v0}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 199
    .end local v0    # "entry":Lorg/mortbay/jetty/servlet/PathMap$Entry;
    .end local v2    # "old":Ljava/lang/Object;
    .end local v3    # "spec":Ljava/lang/String;
    :cond_7
    monitor-exit p0

    return-object v2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 140
    .local v0, "map":Ljava/util/HashMap;
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/PathMap;->putAll(Ljava/util/Map;)V

    .line 141
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "pathSpec"    # Ljava/lang/Object;

    .prologue
    .line 345
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 347
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 348
    .local v1, "spec":Ljava/lang/String;
    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixDefault:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 366
    .end local v1    # "spec":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 350
    .restart local v1    # "spec":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_prefixMap:Lorg/mortbay/util/StringMap;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 353
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 354
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    .end local v1    # "spec":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 356
    .restart local v1    # "spec":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v2, "*."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_suffixMap:Lorg/mortbay/util/StringMap;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 358
    :cond_3
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 360
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_default:Lorg/mortbay/jetty/servlet/PathMap$Entry;

    .line 361
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_defaultSingletonList:Ljava/util/List;

    goto :goto_0

    .line 364
    :cond_4
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/PathMap;->_exactMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v2, v1}, Lorg/mortbay/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 132
    .local v0, "map":Ljava/util/HashMap;
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 133
    return-void
.end method
