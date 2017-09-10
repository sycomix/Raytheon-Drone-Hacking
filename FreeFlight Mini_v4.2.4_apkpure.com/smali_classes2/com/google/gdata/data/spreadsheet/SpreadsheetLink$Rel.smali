.class public final Lcom/google/gdata/data/spreadsheet/SpreadsheetLink$Rel;
.super Ljava/lang/Object;
.source "SpreadsheetLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/spreadsheet/SpreadsheetLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field public static final CELLS_FEED:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#cellsfeed"

.field public static final GVIZ:Ljava/lang/String; = "http://schemas.google.com/visualization/2008#visualizationApi"

.field public static final LIST_FEED:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#listfeed"

.field public static final RECORDS_FEED:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#recordsfeed"

.field public static final WORKSHEETS_FEED:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#worksheetsfeed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
