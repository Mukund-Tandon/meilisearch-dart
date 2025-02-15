import 'package:meilisearch/meilisearch.dart';
import 'queryable.dart';

class SearchQuery extends Queryable {
  final int? offset;
  final int? limit;
  final int? page;
  final int? hitsPerPage;
  final Object? filter;
  final MeiliOperatorExpressionBase? filterExpression;
  final List<String>? sort;
  final List<String>? facets;
  final List<String>? attributesToRetrieve;
  final List<String>? attributesToCrop;
  final int? cropLength;
  final List<String>? attributesToHighlight;
  final bool? showMatchesPosition;
  final String? cropMarker;
  final String? highlightPreTag;
  final String? highlightPostTag;
  final MatchingStrategy? matchingStrategy;

  const SearchQuery({
    this.offset,
    this.limit,
    this.page,
    this.hitsPerPage,
    this.filter,
    this.filterExpression,
    this.sort,
    this.facets,
    this.attributesToRetrieve,
    this.attributesToCrop,
    this.cropLength,
    this.attributesToHighlight,
    this.showMatchesPosition,
    this.cropMarker,
    this.highlightPreTag,
    this.highlightPostTag,
    this.matchingStrategy,
  });

  @override
  Map<String, Object?> buildMap() {
    return {
      'offset': offset,
      'limit': limit,
      'page': page,
      'hitsPerPage': hitsPerPage,
      'filter': filter ?? filterExpression?.transform(),
      'sort': sort,
      'facets': facets,
      'attributesToRetrieve': attributesToRetrieve,
      'attributesToCrop': attributesToCrop,
      'cropLength': cropLength,
      'attributesToHighlight': attributesToHighlight,
      'showMatchesPosition': showMatchesPosition,
      'cropMarker': cropMarker,
      'highlightPreTag': highlightPreTag,
      'highlightPostTag': highlightPostTag,
      'matchingStrategy': matchingStrategy?.name,
    };
  }

  SearchQuery copyWith({
    int? offset,
    int? limit,
    int? page,
    int? hitsPerPage,
    Object? filter,
    MeiliOperatorExpressionBase? filterExpression,
    List<String>? sort,
    List<String>? facets,
    List<String>? attributesToRetrieve,
    List<String>? attributesToCrop,
    int? cropLength,
    List<String>? attributesToHighlight,
    bool? showMatchesPosition,
    String? cropMarker,
    String? highlightPreTag,
    String? highlightPostTag,
    MatchingStrategy? matchingStrategy,
  }) =>
      SearchQuery(
        offset: offset ?? this.offset,
        limit: limit ?? this.limit,
        page: page ?? this.page,
        hitsPerPage: hitsPerPage ?? this.hitsPerPage,
        filter: filter ?? this.filter,
        filterExpression: filterExpression ?? this.filterExpression,
        sort: sort ?? this.sort,
        facets: facets ?? this.facets,
        attributesToRetrieve: attributesToRetrieve ?? this.attributesToRetrieve,
        attributesToCrop: attributesToCrop ?? this.attributesToCrop,
        cropLength: cropLength ?? this.cropLength,
        attributesToHighlight:
            attributesToHighlight ?? this.attributesToHighlight,
        showMatchesPosition: showMatchesPosition ?? this.showMatchesPosition,
        cropMarker: cropMarker ?? this.cropMarker,
        highlightPreTag: highlightPreTag ?? this.highlightPreTag,
        highlightPostTag: highlightPostTag ?? this.highlightPostTag,
        matchingStrategy: matchingStrategy ?? this.matchingStrategy,
      );
}
