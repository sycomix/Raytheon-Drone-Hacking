.class public final Lcom/google/gdata/data/ILink$Rel;
.super Ljava/lang/Object;
.source "ILink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/ILink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field public static final ALTERNATE:Ljava/lang/String; = "alternate"

.field public static final ENCLOSURE:Ljava/lang/String; = "enclosure"

.field public static final ENTRY_EDIT:Ljava/lang/String; = "edit"

.field public static final ENTRY_POST:Ljava/lang/String; = "http://schemas.google.com/g/2005#post"

.field public static final FEED:Ljava/lang/String; = "http://schemas.google.com/g/2005#feed"

.field public static final FEED_BATCH:Ljava/lang/String; = "http://schemas.google.com/g/2005#batch"

.field public static final HUB:Ljava/lang/String; = "hub"

.field public static final MEDIA_EDIT:Ljava/lang/String; = "edit-media"

.field public static final MEDIA_EDIT_BACKCOMPAT:Ljava/lang/String; = "media-edit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEXT:Ljava/lang/String; = "next"

.field public static final PREVIOUS:Ljava/lang/String; = "previous"

.field public static final RELATED:Ljava/lang/String; = "related"

.field public static final RESUMABLE_CREATE_MEDIA:Ljava/lang/String; = "http://schemas.google.com/g/2005#resumable-create-media"

.field public static final RESUMABLE_EDIT_MEDIA:Ljava/lang/String; = "http://schemas.google.com/g/2005#resumable-edit-media"

.field public static final SELF:Ljava/lang/String; = "self"

.field public static final VIA:Ljava/lang/String; = "via"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
