.class public Lorg/mortbay/util/ajax/JSON$Literal;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Generator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/ajax/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Literal"
.end annotation


# instance fields
.field private _json:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 1391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1392
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-static {p1}, Lorg/mortbay/util/ajax/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    .line 1394
    :cond_0
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSON$Literal;->_json:Ljava/lang/String;

    .line 1395
    return-void
.end method


# virtual methods
.method public addJSON(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1404
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$Literal;->_json:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1405
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$Literal;->_json:Ljava/lang/String;

    return-object v0
.end method
