.class public final Lcom/google/gdata/data/ILink$Type;
.super Ljava/lang/Object;
.source "ILink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/ILink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation


# static fields
.field public static final ATOM:Ljava/lang/String;

.field public static final HTML:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/google/gdata/util/ContentType;->TEXT_HTML:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
