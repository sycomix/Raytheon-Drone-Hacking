.class public Lcom/google/gdata/data/spreadsheet/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# static fields
.field public static final CELLS_LINK_REL:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#cellsfeed"

.field public static final GVIZ:Ljava/lang/String; = "http://schemas.google.com/visualization/2008"

.field public static final GVIZ_LINK_REL:Ljava/lang/String; = "http://schemas.google.com/visualization/2008#visualizationApi"

.field public static final GVIZ_PREFIX:Ljava/lang/String; = "http://schemas.google.com/visualization/2008#"

.field public static final LIST_LINK_REL:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#listfeed"

.field public static final SOURCE_LINK_REL:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#source"

.field public static final TABLES_LINK_REL:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#tablesfeed"

.field public static final WORKSHEETS_LINK_REL:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#worksheetsfeed"

.field public static final gSpread:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006"

.field public static final gSpreadAlias:Ljava/lang/String; = "gs"

.field public static final gSpreadCustom:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006/extended"

.field public static final gSpreadCustomAlias:Ljava/lang/String; = "gsx"

.field public static final gSpreadCustomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final gSpreadCustomPrefix:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006/extended#"

.field public static final gSpreadNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final gSpreadPrefix:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gs"

    const-string v2, "http://schemas.google.com/spreadsheets/2006"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/spreadsheet/Namespaces;->gSpreadNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 55
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gsx"

    const-string v2, "http://schemas.google.com/spreadsheets/2006/extended"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/spreadsheet/Namespaces;->gSpreadCustomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
